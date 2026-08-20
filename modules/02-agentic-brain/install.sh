#!/usr/bin/env bash
# ==============================================================================
# INFJ AI — Module 02: Agentic Brain Vault & Memory OS Installer
# Developed by Gin (https://x.com/gin_cryptodiary)
# Repository: https://github.com/saturninfj/infj-ai
# ==============================================================================

set -euo pipefail

VAULT_DIR="${1:-$HOME/vault}"

echo "[INFJ AI] Initializing Agentic Brain Stack at: ${VAULT_DIR}"

# 1. Directory Structure
mkdir -p "${VAULT_DIR}"/Brain/{Architecture,Handoffs,SOPs}
mkdir -p "${VAULT_DIR}"/Memory
mkdir -p "${VAULT_DIR}"/Projects
mkdir -p "${VAULT_DIR}"/Research
mkdir -p "${VAULT_DIR}"/Daily

# 2. System Memory Overview Template
cat << 'EOF' > "${VAULT_DIR}/Memory/mem-system-overview.md"
---
type: reference
title: "Agentic System Overview & Memory Ground Truth"
name: "mem-system-overview"
metadata:
  type: reference
  modified: '2026-08-20T15:45:00.000Z'
  node_type: memory
description: >-
  Ground truth memory index for AI Agents. Defines directory structure,
  search indexing guidelines, and RAG retrieval rules.
---

# Agentic System Overview

Single source of truth (SSOT) for autonomous AI Agents and human operators.

## Vault Hierarchy
- `Brain/`: SOPs, system architecture, and cross-agent handoffs.
- `Memory/`: Persistent project and reference memories (`mem-*.md`).
- `Projects/`: Active project operational files.
- `Research/`: Grounding notes, market research, and web scrapes.
- `Daily/`: Daily execution logs and transcripts.

## Metadata Guidelines
All notes MUST contain YAML frontmatter with `type`, `title`, `name`, `metadata`, and `description`.
EOF

# 3. Agentic Workflow SOP & Handoff Templates
cat << 'EOF' > "${VAULT_DIR}/Brain/SOPs/SOP-Agentic-Workflow.md"
---
type: sop
title: "SOP - Agentic Memory & Knowledge Retrieval Workflow"
name: "sop-agentic-workflow"
metadata:
  type: sop
  modified: '2026-08-20T15:45:00.000Z'
  node_type: memory
description: >-
  Standard operating procedure for AI agents when reading, searching,
  writing, and citing knowledge in this vault.
---

# SOP: Agentic Knowledge Workflow

## 1. Search First (Anti-Hallucination Principle)
Search local vault memory before generating content. Do not guess facts when local ground truth exists.

## 2. Structured Frontmatter (Anti-Drift Principle)
Every new markdown file MUST include YAML frontmatter:
- `type`: `concept` | `project` | `reference` | `sop`
- `title`: Clear human title
- `name`: kebab-case slug
- `description`: 1-3 line sitemapped summary

## 3. Strict Citation & Source Attribution
When quoting vault documents, include page or line references to guarantee transparency.
EOF

cat << 'EOF' > "${VAULT_DIR}/Brain/Handoffs/handoff_threadspost.md"
---
type: sop
title: "Handoff - Bloomberg & News to Threads Content Pipeline"
name: "handoff_threadspost"
metadata:
  type: sop
  modified: '2026-08-20T17:45:00.000Z'
  node_type: handoff
description: >-
  4-Stage operational pipeline for transforming raw Bloomberg, crypto, or market
  news into high-retention Threads long posts.
---

# Handoff: Bloomberg & News to Threads Content Pipeline

## Purpose
This document details the 4-Stage Content Transformation System for converting raw news articles or web scrapes into engaging Threads long posts.

## Pipeline Architecture
1. **Stage 1 (Ingest):** Articles from any news portal / custom source saved to `~/vault/Research/`.
2. **Stage 2 (4-Question Filter):** What happened -> Why -> Who wins/loses -> Next domino.
3. **Stage 3 (Copywriting Engine):** Formatted with client brand voice, pattern interrupt hook, and `\n\n` double spacing.
4. **Stage 4 (Output):** Drafts saved to `~/vault/Projects/Threads-Drafts/`.
EOF

# 4. Version Control Setup
if [ ! -d "${VAULT_DIR}/.git" ]; then
    (
        cd "${VAULT_DIR}" && git init
        if ! git config user.name >/dev/null 2>&1; then
            git config user.name "Client User"
        fi
        if ! git config user.email >/dev/null 2>&1; then
            git config user.email "client@local.vault"
        fi
        git add . && git commit -m "feat(brain): initialize agentic brain stack"
    )
    echo "[INFJ AI] Git repository initialized."
else
    echo "[INFJ AI] Git repository already present."
fi

echo "[INFJ AI] Agentic Brain Stack initialization complete."
