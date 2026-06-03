# frozen_string_literal: true

# Build-time favicon generation.
#
# Down-samples the site icon (assets/img/<site.icon>, e.g. logo.png) into a
# standard favicon set using ImageMagick, then injects the corresponding
# <link> tags into every page's <head>.
#
# This complements jekyll-imagemagick (which only handles responsive content
# images) by giving the favicon proper small variants instead of serving the
# full-resolution logo. Output is written straight into the built site, so
# nothing needs to be committed to the repository.
#
# Requires ImageMagick on PATH (already a dependency of jekyll-imagemagick).

require "fileutils"
require "json"

module Favicons
  OUTPUT_DIR = "assets/img/favicons"

  # filename => square pixel size
  PNG_SIZES = {
    "favicon-16x16.png" => 16,
    "favicon-32x32.png" => 32,
    "favicon-48x48.png" => 48,
    "apple-touch-icon.png" => 180,
    "android-chrome-192x192.png" => 192,
    "android-chrome-512x512.png" => 512,
  }.freeze

  # sizes packed into the multi-resolution favicon.ico
  ICO_SIZES = [16, 32, 48].freeze

  module_function

  # Prefer ImageMagick 7's `magick`, fall back to IM6's `convert`.
  def magick
    @magick ||=
      if system("magick", "-version", out: File::NULL, err: File::NULL)
        "magick"
      elsif system("convert", "-version", out: File::NULL, err: File::NULL)
        "convert"
      end
  end

  # Absolute path to the source icon, or nil if the site icon is an emoji /
  # unset / missing on disk.
  def source_icon(site)
    icon = site.config["icon"]
    return nil if icon.nil? || icon.to_s.strip.empty?
    return nil if icon.to_s.length <= 4 # emoji favicon, handled by the theme

    path = File.join(site.source, "assets", "img", icon)
    File.file?(path) ? path : nil
  end

  def run(*args)
    system(magick, *args, out: File::NULL, err: File::NULL)
  end

  def generate(site)
    return if @generated # once per build is enough

    source = source_icon(site)
    return if source.nil?

    if magick.nil?
      Jekyll.logger.warn "Favicons:", "ImageMagick not found on PATH; skipping favicon generation"
      return
    end

    dest_dir = File.join(site.dest, OUTPUT_DIR)
    FileUtils.mkdir_p(dest_dir)

    PNG_SIZES.each do |name, size|
      out = File.join(dest_dir, name)
      run(source, "-resize", "#{size}x#{size}", out)
    end

    ico = File.join(dest_dir, "favicon.ico")
    run(source, "-define", "icon:auto-resize=#{ICO_SIZES.join(',')}", ico)
    # Browsers request /favicon.ico at the site root by default.
    FileUtils.cp(ico, File.join(site.dest, "favicon.ico"))

    write_manifest(site, dest_dir)

    @generated = true
    Jekyll.logger.info "Favicons:", "generated favicon set from assets/img/#{site.config['icon']}"
  end

  def write_manifest(site, dest_dir)
    base = site.config["baseurl"].to_s
    prefix = "#{base}/#{OUTPUT_DIR}"
    manifest = {
      "name" => site.config["title"].to_s,
      "short_name" => site.config["title"].to_s,
      "icons" => [
        { "src" => "#{prefix}/android-chrome-192x192.png", "sizes" => "192x192", "type" => "image/png" },
        { "src" => "#{prefix}/android-chrome-512x512.png", "sizes" => "512x512", "type" => "image/png" },
      ],
      "theme_color" => "#ffffff",
      "background_color" => "#ffffff",
      "display" => "standalone",
    }
    File.write(File.join(dest_dir, "site.webmanifest"), JSON.pretty_generate(manifest))
  end

  # The <link> tags to inject into <head>.
  def head_links(site)
    return nil if source_icon(site).nil?

    base = site.config["baseurl"].to_s
    prefix = "#{base}/#{OUTPUT_DIR}"
    <<~HTML
      <link rel="icon" type="image/png" sizes="32x32" href="#{prefix}/favicon-32x32.png">
      <link rel="icon" type="image/png" sizes="16x16" href="#{prefix}/favicon-16x16.png">
      <link rel="apple-touch-icon" sizes="180x180" href="#{prefix}/apple-touch-icon.png">
      <link rel="manifest" href="#{prefix}/site.webmanifest">
    HTML
  end
end

# Generate the images once the build destination is known.
Jekyll::Hooks.register :site, :post_write do |site|
  Favicons.generate(site)
end

# Inject the favicon links into every rendered page's <head>.
%i[pages documents].each do |type|
  Jekyll::Hooks.register type, :post_render do |item|
    output = item.output
    next unless output.is_a?(String) && output.include?("</head>")
    next if output.include?("/#{Favicons::OUTPUT_DIR}/favicon-32x32.png")

    links = Favicons.head_links(item.site)
    next if links.nil?

    item.output = output.sub("</head>", "#{links}</head>")
  end
end
