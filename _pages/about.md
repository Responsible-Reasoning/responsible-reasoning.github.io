---
layout: about
title: Home
permalink: /

profile:
  align: right
  image: logo.png
  image_circular: false # crops the image to make it circular
  more_info: >
    <p><b>ICLR 2027</b></p>
    <p>San Francisco, CA, USA</p>

selected_papers: false # includes a list of papers marked as "selected={true}"
social: true # includes social icons at the bottom of the page

announcements:
  enabled: false # includes a list of news items
  scrollable: true # adds a vertical scroll bar if there are more than 3 news items
  limit: 5 # leave blank to include all the news in the `_news` folder

latest_posts:
  enabled: false
  scrollable: true # adds a vertical scroll bar if there are more than 3 new posts items
  limit: 3 # leave blank to include all the blog posts
---

<style>
  /* Let the page content flow around the logo instead of stacking below it. */
  .profile.float-right {
    float: right !important;
    width: clamp(180px, 28%, 260px);
    margin: 0.35rem 0 1rem 1.5rem;
  }
  .profile.float-right .more-info {
    text-align: center;
  }
  @media (max-width: 575px) {
    .profile.float-right {
      float: none !important;
      width: 70%;
      margin: 0 auto 1.25rem;
    }
  }
</style>

> **Join the effort towards responsible reasoning architectures, pushing the frontiers of trustworthy AI in the wild.**

The **First Workshop on Responsible Reasoning in the Wild** will be held as an in-person workshop at the **International Conference on Learning Representations (ICLR) 2027** in San Francisco, CA, USA. It brings together researchers working on reasoning in large language models, interpretability, robustness and generalization, safety and alignment, and evaluation — organized not around any single methodological tradition, but around a guiding question: **what does it take for a reasoning system to warrant the responsibility it is given in deployment?**

We invite contributions through our [Call for Papers](/cfp/), and we look forward to welcoming you at ICLR 2027.

### Motivation

Machine-learned reasoning systems have left the lab. Language-model agents draft contracts and code, autonomous vehicles make split-second driving decisions, and learned decision-support pipelines inform medical, financial, and safety-critical judgments. Wherever such a system acts, responsibility follows: someone must be able to answer for a reasoning step that was wrong, unverifiable, or misunderstood. Yet the pace at which reasoning systems are being delegated responsibility has outstripped the pace at which we can justify that delegation. Benchmark performance, the field's default currency of trust, says little about whether a system's reasoning will hold up under the distribution shifts, adversarial conditions, and ambiguous stakes of deployment in the wild.

The failures we observe in deployed reasoning systems fall into two distinct but interacting categories. **Technical gaps** are shortfalls in capability: reasoning that is brittle under distribution shift, explanations that are unfaithful to the underlying computation, generalization claims that rest on held-out test performance rather than principled guarantees, and failure modes that remain opaque until they materialize in deployment. **Responsibility gaps** persist even where capability suffices: it is often unclear what evidence should be required before a reasoning system is delegated a task, how its reasoning can be audited after the fact, who is accountable when a delegated decision fails, and how oversight should function when reasoning traces are only partially meaningful to a human reviewer.

These two gaps are entangled. Technical progress reshapes where responsibility can reasonably be placed, and explicit responsibility requirements, in turn, determine which technical problems most urgently need solving. Treating them separately, as the field largely does today, produces methods without deployment criteria and deployment norms without technical grounding. We therefore welcome methods that enable reasoning systems whose delegation of responsibility can be justified, audited, and, when necessary, revoked. For instance, causal inference offers formal grounding for generalization and intervention claims; neuro-symbolic approaches and declarative representations offer reasoning that can be constrained and verified; and mechanistic interpretability offers evidence about what a model's reasoning actually is.

### Problems Targeted by the Workshop

The workshop aims to produce progress on four concrete problems:

1. **Quantitative responsibility** — how to quantify responsibility, e.g., regarding safety in delegating decisions to machine learning systems or security when controlling the flow of information?
2. **Post-hoc accountability** — given a reasoning failure in deployment, what instrumentation is needed to localize it to a reasoning step, an input condition, or a specification error?
3. **Faithfulness under shift** — do explanation and reasoning-trace methods retain their validity precisely where they matter most, off-distribution, and how do we obtain reasoning architectures that know about their responsibilities?
4. **Revocation** — what monitoring signals indicate that a previously justified delegation is no longer justified?

### Important Dates

<style>
  td.countdown {
    color: var(--global-text-color-light);
    font-variant-numeric: tabular-nums;
    white-space: nowrap;
  }
</style>

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

<script>
  document.querySelectorAll("td.countdown[data-until]").forEach(function (cell) {
    var ms = new Date(cell.dataset.until) - Date.now();
    var days = Math.ceil(ms / 86400000);
    cell.textContent = ms < 0 ? "passed" : days <= 1 ? "today" : "in " + days + " days";
  });
</script>

### Schedule

The workshop runs for a full day and features an opening keynote, invited talks, contributed talks, and two poster sessions, followed by an open panel discussion. Talk titles and the full program will be posted here as they are confirmed.

<style>
  .schedule {
    margin: 1.25rem 0 2rem;
    --sched-contrib-border: #8ab4d8;
    --sched-contrib-bg: rgba(138, 180, 216, 0.16);
    --sched-poster-border: #93c59b;
    --sched-poster-bg: rgba(147, 197, 155, 0.18);
    --sched-quiet-border: #dcc49c;
    --sched-quiet-bg: rgba(220, 196, 156, 0.14);
  }
  html[data-theme="dark"] .schedule {
    --sched-contrib-border: #56789a;
    --sched-contrib-bg: rgba(138, 180, 216, 0.1);
    --sched-poster-border: #5d8a66;
    --sched-poster-bg: rgba(147, 197, 155, 0.1);
    --sched-quiet-border: #8f7d58;
    --sched-quiet-bg: rgba(220, 196, 156, 0.08);
  }
  .schedule .schedule-part {
    margin: 0 0 0.6rem;
    padding-bottom: 0.35rem;
    border-bottom: 1px solid var(--global-divider-color);
    font-size: 0.78rem;
    font-weight: 700;
    letter-spacing: 0.14em;
    text-transform: uppercase;
    color: var(--global-text-color-light);
  }
  .schedule .schedule-part:not(:first-child) {
    margin-top: 2rem;
  }
  .schedule-row {
    display: grid;
    grid-template-columns: 8.5rem 1fr;
    column-gap: 1.25rem;
    align-items: baseline;
    padding: 0.45rem 0.85rem;
    border-left: 3px solid var(--global-divider-color);
    border-radius: 0 6px 6px 0;
  }
  .schedule-row + .schedule-row {
    margin-top: 0.3rem;
  }
  .schedule-time {
    font-variant-numeric: tabular-nums;
    font-size: 0.92rem;
    color: var(--global-text-color-light);
    white-space: nowrap;
  }
  .schedule-session {
    font-weight: 600;
  }
  .schedule-speaker {
    display: block;
    font-weight: 400;
    font-size: 0.92rem;
    color: var(--global-text-color-light);
  }
  .schedule-row.is-feature {
    border-left-color: var(--global-theme-color);
  }
  .schedule-row.is-contrib {
    border-left-color: var(--sched-contrib-border);
    background: var(--sched-contrib-bg);
  }
  .schedule-row.is-poster {
    border-left-color: var(--sched-poster-border);
    background: var(--sched-poster-bg);
  }
  .schedule-row.is-quiet {
    border-left-color: var(--sched-quiet-border);
    background: var(--sched-quiet-bg);
  }
  .schedule-row.is-quiet .schedule-session {
    font-weight: 400;
    color: var(--global-text-color-light);
  }
  @media (max-width: 576px) {
    .schedule-row {
      grid-template-columns: 1fr;
      row-gap: 0.1rem;
    }
  }
</style>

<div class="schedule">
  <p class="schedule-part">Morning</p>
  <div class="schedule-row is-quiet"><span class="schedule-time">09:00 – 09:15</span><span class="schedule-session">Welcome &amp; Opening Remarks</span></div>
  <div class="schedule-row is-feature"><span class="schedule-time">09:15 – 09:45</span><span class="schedule-session">Opening Keynote<span class="schedule-speaker">Judea Pearl — University of California, Los Angeles</span></span></div>
  <div class="schedule-row is-feature"><span class="schedule-time">09:45 – 10:15</span><span class="schedule-session">Invited Talk 1</span></div>
  <div class="schedule-row is-contrib"><span class="schedule-time">10:15 – 10:25</span><span class="schedule-session">Contributed Talk 1</span></div>
  <div class="schedule-row is-contrib"><span class="schedule-time">10:25 – 10:35</span><span class="schedule-session">Contributed Talk 2</span></div>
  <div class="schedule-row is-poster"><span class="schedule-time">10:35 – 12:00</span><span class="schedule-session">Poster Session 1 &amp; Coffee Break</span></div>

  <p class="schedule-part">Afternoon</p>
  <div class="schedule-row is-quiet"><span class="schedule-time">12:00 – 13:00</span><span class="schedule-session">Lunch Break</span></div>
  <div class="schedule-row is-feature"><span class="schedule-time">13:00 – 13:30</span><span class="schedule-session">Invited Talk 2</span></div>
  <div class="schedule-row is-contrib"><span class="schedule-time">13:30 – 13:40</span><span class="schedule-session">Contributed Talk 3</span></div>
  <div class="schedule-row is-contrib"><span class="schedule-time">13:40 – 13:50</span><span class="schedule-session">Contributed Talk 4</span></div>
  <div class="schedule-row is-poster"><span class="schedule-time">13:50 – 15:30</span><span class="schedule-session">Poster Session 2 &amp; Coffee Break</span></div>
  <div class="schedule-row is-feature"><span class="schedule-time">15:30 – 16:00</span><span class="schedule-session">Invited Talk 3</span></div>
  <div class="schedule-row is-feature"><span class="schedule-time">16:00 – 16:30</span><span class="schedule-session">Invited Talk 4</span></div>
  <div class="schedule-row is-quiet"><span class="schedule-time">16:30 – 16:45</span><span class="schedule-session">Break</span></div>
  <div class="schedule-row is-feature"><span class="schedule-time">16:45 – 17:45</span><span class="schedule-session">Panel Discussion<span class="schedule-speaker">“Technical Gaps vs. Responsibility Gaps”</span></span></div>
  <div class="schedule-row is-quiet"><span class="schedule-time">17:45 – 18:00</span><span class="schedule-session">Closing Remarks</span></div>
</div>

