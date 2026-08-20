---
type: sop
title: "Handoff - Bloomberg & News to Threads Content Pipeline"
name: "handoff_threadspost"
metadata:
  type: sop
  modified: "2026-08-20T17:45:00.000Z"
  node_type: handoff
description: >-
  4-Stage operational pipeline for transforming raw Bloomberg, crypto, or market
  news into high-retention Threads long posts.
---

# Handoff: Bloomberg & News to Threads Content Pipeline

## Purpose
This document details the exact 4-Stage Content Transformation System for converting raw news articles, research papers, or web scrapes into engaging Threads long posts.

---

## 🏗️ 4-Stage Pipeline Architecture

```text
[Stage 1: Ingest]
Raw Article / News URL / Markdown File (from any portal / custom source)
       │
       ▼
[Stage 2: 4-Question Analytical Filter]
  1. What actually happened? (Data / Event)
  2. Why did it happen? (Causal driver behind the scenes)
  3. Who benefits & who gets hurt? (Incentive structure)
  4. What is the next domino / action? (Takeaways & implications)
       │
       ▼
[Stage 3: Threads Copywriting Engine (Client Brand Voice)]
  - Hook Line (Pattern interrupt / curiosity gap, 15-25 words)
  - Body Formatting (Short sentences, double newline \n\n spacing)
  - Tone: Brand-aligned for target audience (skeptical, clear, non-jargon)
  - Closing (Discussion prompt / CTA)
       │
       ▼
[Stage 4: Output & Publishing]
Saved to ~/vault/Projects/Threads-Drafts/YYYY-MM-DD-title.md
```

---

## Stage Breakdown & Operational Guidance

### Stage 1: Multi-Source Ingest
* **Input Sources:** Bloomberg Light, CoinDesk, Cointelegraph, Reuters, RSS feeds, or manual markdown notes placed in `~/vault/Research/`.
* **Rule:** The AI agent reads the full ground truth text before drafting.

### Stage 2: The 4-Question Analytical Framework
Instead of writing textbook summaries, extract answers to these 4 core questions:
1. **What happened?** Hard numbers, market moves, or policy shifts.
2. **Why did it happen?** The hidden incentives or macro drivers behind the headline.
3. **Who wins & who loses?** Who profits and who gets liquidated/hurt.
4. **What's next?** Practical takeaways and next dominoes to watch.

### Stage 3: Threads Copywriting Engine
* **Voice Alignment:** Adapt to the client's own brand voice and tone guidelines.
* **Formatting Rule:** Use `\n\n` (double line breaks) between paragraphs so Threads renders clean spacing instead of dense walls of text.
* **Hook Rule:** First line MUST be a bold pattern interrupt (e.g., *"Why 90% of traders misunderstood today's Fed announcement..."*).

### Stage 4: Output Destination
Save generated draft scripts to `~/vault/Projects/Threads-Drafts/` formatted with standard YAML frontmatter for review and publishing.
