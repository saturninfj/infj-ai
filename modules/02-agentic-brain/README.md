# Module 02: Agentic Brain Vault & Memory OS

This module establishes the sovereign memory architecture, frontmatter metadata rules, directory hierarchy, and FTS5 search indexing for AI agents.

---

## Vault Directory Hierarchy

```text
~/vault/
├── Brain/                         # System architecture, SOPs, and handoffs
│   ├── Architecture/              # System & hardware specifications
│   ├── Handoffs/                   # Cross-agent state registry
│   └── SOPs/                      # Standard operating procedures
├── Memory/                        # Persistent single source of truth (mem-*.md)
├── Projects/                      # Active project operational files
├── Research/                      # Grounding data and market intelligence
└── Daily/                         # Execution logs and transcripts
```

---

## YAML Frontmatter Metadata Standard

Every markdown document MUST include structured frontmatter:

```yaml
---
type: concept | project | reference | sop
title: "Document Title"
name: "kebab-case-slug"
metadata:
  type: project
  modified: '2026-08-20T15:45:00.000Z'
  node_type: memory
description: >-
  Concise 1-3 line summary of document purpose and current status.
---
```

---

## Installation

Run the module installer directly:

```bash
curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/modules/02-agentic-brain/install.sh | bash
```
