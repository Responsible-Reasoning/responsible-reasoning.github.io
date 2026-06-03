# Responsible Reasoning — Workshop Website

Website for **The First Workshop on Responsible Reasoning @ NeurIPS 2026**
(<https://responsible-reasoning.github.io>).

Built with [Jekyll](https://jekyllrb.com/) + the [al-folio](https://github.com/alshedivat/al-folio)
theme, deployed to GitHub Pages via GitHub Actions.

## Edit content

- **Home** (dates, schedule, motivation, topics): [`_pages/about.md`](_pages/about.md)
- **Call for Papers**: [`_pages/cfp.md`](_pages/cfp.md)
- **Speakers**: [`_pages/speakers.md`](_pages/speakers.md) (bios in [`_pages/speakers/`](_pages/speakers/))
- **Organizers**: [`_pages/organizers.md`](_pages/organizers.md) (bios in [`_pages/organizers/`](_pages/organizers/))
- **Site settings**: [`_config.yml`](_config.yml)

## Build & run locally

Needs Ruby 3.x, Bundler, and ImageMagick (the [dev container](.devcontainer/devcontainer.json)
installs these for you).

```bash
bundle install
bundle exec jekyll serve   # → http://localhost:4000
```

## Deploy

Push to `main`. The [deploy workflow](.github/workflows/deploy.yml) builds the site with
Bundler and publishes it via GitHub Pages. One-time setup: set **Settings → Pages → Source**
to **GitHub Actions**. al-folio uses custom plugins, so it must be built by this workflow
rather than GitHub Pages' built-in Jekyll (whose theme allowlist excludes `al_folio_core`).

## License

Site content © the workshop organizers. The al-folio theme is MIT-licensed (see [`LICENSE`](LICENSE)).
