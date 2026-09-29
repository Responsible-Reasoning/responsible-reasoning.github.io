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

<div markdown="1">

| Milestone                     | Date                          |
| :---------------------------- | :---------------------------- |
| **Submissions open**          | **15 December 2026**          |
| **Paper submission deadline** | **1 February 2027** (AoE)     |
| **Acceptance notification**   | **26 February 2027** (AoE)    |
| **Workshop day**              | **ICLR 2027** — San Francisco |

</div>

### Schedule

The workshop runs for a full day and features an opening keynote, invited talks, contributed talks, and two poster sessions, followed by an open panel discussion. Talk titles and the full program will be posted here as they are confirmed.

<div markdown="1">

|     Time      | Session                                                            |
| :-----------: | :----------------------------------------------------------------- |
| 09:00 – 09:15 | **Welcome & Opening Remarks**                                       |
| 09:15 – 09:45 | **Opening Keynote**                                                 |
| 09:45 – 10:15 | **Invited Talk 1**                                                  |
| 10:15 – 10:25 | **Contributed Talk 1**                                              |
| 10:25 – 10:35 | **Contributed Talk 2**                                              |
| 10:35 – 12:00 | **Poster Session 1 & Coffee Break**                                 |
| 12:00 – 13:00 | **Lunch Break**                                                     |
| 13:00 – 13:30 | **Invited Talk 2**                                                  |
| 13:30 – 13:40 | **Contributed Talk 3**                                              |
| 13:40 – 13:50 | **Contributed Talk 4**                                              |
| 13:50 – 15:30 | **Poster Session 2 & Coffee Break**                                 |
| 15:30 – 16:00 | **Invited Talk 3**                                                  |
| 16:00 – 16:30 | **Invited Talk 4**                                                  |
| 16:30 – 16:45 | **Break**                                                           |
| 16:45 – 17:45 | **Panel Discussion: "Technical Gaps vs. Responsibility Gaps"**      |
| 17:45 – 18:00 | **Closing Remarks**                                                 |

</div>

### Virtual Access to Materials

While the workshop will be held as an in-person event, core material and outcomes will be made available virtually for access beyond the conference days. All posters will be provided in digital form on this website, which will be maintained long after the workshop, alongside any additional material such as video recordings. A summarizing blog post of the panel discussion will preserve its key arguments. For those unable to attend, e.g., due to visa issues or other exceptional personal circumstances, we will offer help to still show the poster, and otherwise host and promote a recorded video of the authors.
