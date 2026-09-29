---
layout: page
permalink: /cfp/
title: Call for Papers
nav: true
nav_order: 2
---

The **First Workshop on Responsible Reasoning in the Wild** invites submissions focused on the central question of when reasoning systems warrant the responsibility they are given — reasoning systems whose delegation of responsibility can be justified, audited, and, when necessary, revoked.

### Important Dates

<style>
  td.countdown {
    color: var(--global-text-color-light);
    font-variant-numeric: tabular-nums;
    white-space: nowrap;
  }
</style>

<!-- The theme's scripts mark every table's parent as scrollable; this wrapper keeps that off the page container. -->
<div class="dates-table">
<table>
  <thead>
    <tr><th style="text-align: left">Milestone</th><th style="text-align: left">Date</th><th style="text-align: left">Countdown</th></tr>
  </thead>
  <tbody>
    <tr><td><strong>Submissions open</strong></td><td><strong>15 December 2026</strong></td><td class="countdown" data-until="2026-12-15T00:00:00Z"></td></tr>
    <tr><td><strong>Paper submission deadline</strong></td><td><strong>1 February 2027</strong> (AoE)</td><td class="countdown" data-until="2027-02-02T11:59:00Z"></td></tr>
    <tr><td><strong>Acceptance notification</strong></td><td><strong>26 February 2027</strong> (AoE)</td><td class="countdown" data-until="2027-02-27T11:59:00Z"></td></tr>
    <tr><td><strong>Workshop day</strong></td><td><strong>ICLR 2027</strong> — San Francisco</td><td class="countdown"></td></tr>
  </tbody>
</table>
</div>

<script>
  document.querySelectorAll("td.countdown[data-until]").forEach(function (cell) {
    var ms = new Date(cell.dataset.until) - Date.now();
    var days = Math.ceil(ms / 86400000);
    cell.textContent = ms < 0 ? "passed" : days <= 1 ? "today" : "in " + days + " days";
  });
</script>

### Submission Tracks

We invite three types of submissions:

<style>
  .tracks {
    margin: 1.25rem 0 2rem;
    --track-research-border: #8ab4d8;
    --track-research-bg: rgba(138, 180, 216, 0.16);
    --track-deploy-border: #93c59b;
    --track-deploy-bg: rgba(147, 197, 155, 0.18);
    --track-tiny-border: #dcc49c;
    --track-tiny-bg: rgba(220, 196, 156, 0.14);
  }
  html[data-theme="dark"] .tracks {
    --track-research-border: #56789a;
    --track-research-bg: rgba(138, 180, 216, 0.1);
    --track-deploy-border: #5d8a66;
    --track-deploy-bg: rgba(147, 197, 155, 0.1);
    --track-tiny-border: #8f7d58;
    --track-tiny-bg: rgba(220, 196, 156, 0.08);
  }
  .track {
    padding: 0.9rem 1.1rem;
    border-left: 3px solid var(--global-divider-color);
    border-radius: 0 6px 6px 0;
  }
  .track + .track {
    margin-top: 0.85rem;
  }
  .track.is-research {
    border-left-color: var(--track-research-border);
    background: var(--track-research-bg);
  }
  .track.is-deploy {
    border-left-color: var(--track-deploy-border);
    background: var(--track-deploy-bg);
  }
  .track.is-tiny {
    border-left-color: var(--track-tiny-border);
    background: var(--track-tiny-bg);
  }
  .track-head {
    display: flex;
    align-items: baseline;
    justify-content: space-between;
    column-gap: 1rem;
    flex-wrap: wrap;
    margin-bottom: 0.35rem;
  }
  .track-title {
    font-weight: 600;
    font-size: 1.05rem;
  }
  .track-pages {
    font-size: 0.82rem;
    font-variant-numeric: tabular-nums;
    white-space: nowrap;
    color: var(--global-text-color-light);
    border: 1px solid var(--global-divider-color);
    border-radius: 999px;
    padding: 0.1rem 0.6rem;
  }
  .track p {
    margin: 0;
  }
</style>

<div class="tracks">
  <div class="track is-research">
    <div class="track-head"><span class="track-title">Research papers</span><span class="track-pages">up to 6 pages</span></div>
    <p>Papers that demonstrably narrow a technical or responsibility gap. Research papers must evaluate under at least one non-i.i.d. condition: distribution shift, adversarial or misspecified inputs, deployment-derived data, or an explicitly stated and tested robustness assumption. We ask authors to make explicit which responsibility gaps they address and how their method tackles them.</p>
  </div>
  <div class="track is-deploy">
    <div class="track-head"><span class="track-title">Deployment track papers</span><span class="track-pages">up to 6 pages</span></div>
    <p>Papers documenting responsible reasoning, or its absence, in real-world settings. We seek contributions that go beyond proof-of-concept: papers that show where systems were delegated responsibility at or beyond the limits of their reliability, where causal or structured methods added genuine value in production, what engineering and scaling challenges remain, and what the path toward broader adoption looks like. Negative results, post-mortems of reasoning failures, and honest accounts of limitations are explicitly encouraged.</p>
  </div>
  <div class="track is-tiny">
    <div class="track-head"><span class="track-title">Tiny papers</span><span class="track-pages">up to 3 pages</span></div>
    <p>Late-breaking insights regarding responsibility gaps and delegation failures in state-of-the-art reasoning architectures. We explicitly welcome negative results, including re-analysis of published reasoning benchmarks under shift, or documented failure cases. Tiny papers receive the same review attention and guaranteed poster slots, and are eligible for a dedicated spotlight block in Poster Session 1.</p>
  </div>
</div>

### Topics

Topics of interest include, but are not limited to:

- Methods and criteria for deciding when a reasoning system warrants delegated responsibility, and on what evidence
- Auditing and failure attribution for deployed reasoning systems such as agents, including the faithfulness and verifiability of reasoning traces
- Robustness of reasoning under distribution shift and susceptibility to spurious correlations
- Methods — from causal inference, neuro-symbolic integration, structured priors, mechanistic interpretability, or elsewhere — that yield reasoning which can be inspected, constrained, or certified

### Review and Presentation

All submissions will be reviewed for fit and quality, and accepted ones will be presented as posters or contributed talks. We are committed to an inclusive submission and review process, and will actively solicit submissions from underrepresented groups and institutions, ensure geographic diversity in our program committee, and provide a welcoming environment for early-career researchers.

### Submit

The submission portal and detailed formatting instructions will be announced here soon. <!-- TODO: add OpenReview submission link and template details once finalized. -->
