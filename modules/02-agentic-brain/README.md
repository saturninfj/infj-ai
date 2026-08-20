# Module 02: Digital Filing Cabinet (Agentic Brain Memory OS)

Step 2 creates an organized folder system on your computer (`~/vault`) so your AI assistant can store, search, and retrieve information with zero hallucinations.

---

## Your Clean Folder Structure

All your notes and project files live inside `~/vault` organized into 5 clean folders:

```text
~/vault/
├── Brain/         # System rules, guidelines, and handoff notes
├── Memory/        # Permanent reference notes (your single source of truth)
├── Projects/      # Active projects you are working on right now
├── Research/      # Articles, web scrapes, and market research
└── Daily/         # Daily work logs and execution transcripts
```

---

## Smart Summary Headers

Every file includes a short summary header at the top:

```yaml
---
type: project
title: "Project Name"
name: "project-name"
description: "A short 1-3 line explanation of what this file contains."
---
```

When you ask your AI assistant a question, it quickly reads these summary headers first to find the right file in seconds.

---

## Quick Installation Command

Open your **Terminal** app, paste this line, and press Enter:

```bash
curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/modules/02-agentic-brain/install.sh | bash
```
