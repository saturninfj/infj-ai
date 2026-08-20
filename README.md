# INFJ AI Portfolio & Architecture Framework

Sovereign AI Compute, Memory Architecture, and Network Security Infrastructure.  
Developed by **Gin** ([@gin_cryptodiary](https://x.com/gin_cryptodiary) / **INFJcrypto**).

---

## Executive Overview

The INFJ AI portfolio provides production-tested blueprints, scripts, and operational standards for building sovereign, high-performance AI agent environments. Designed for B2B client deployments, edge appliances, and masterclass instruction at INFJcrypto.com.

---

## Deployment Quickstarts

### Module 1: Agentic Brain Stack Installation
Deploy standard directory hierarchy, YAML metadata templates, SOPs, and version control:

```bash
curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/install-brain.sh | bash
```

### Module 2: Network Security Layer Installation
Deploy 4-layer network shield, NextDNS DoH (Profile 2161aa) primary resolution, and local Unbound recursive fallback:

```bash
curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/install-security.sh | bash
```

---

## Portfolio Build 01: Agentic Brain Stack Framework

### Problem Statement
Standard unorganized documents cause context drift, session memory loss, and hallucinations when consumed by LLM agents. Flat text without structured metadata forces agents to execute expensive, unfocused semantic scans across thousands of files.

### 4-Tier Architecture

```text
+--------------------------------------------------------+
|                   AI Agent Interface                   |
|   (Skills: vault-save, citations-api, vault-files-api)  |
+---------------------------+----------------------------+
                            |
+---------------------------v----------------------------+
|              GBrain Hybrid Search Engine               |
|   (SQLite FTS5 + Wikilinks + Metadata Indexing)        |
+---------------------------+----------------------------+
                            |
+---------------------------v----------------------------+
|            Obsidian Vault (Data Repository)            |
|   (Brain/, Projects/, Reference/, Daily/, Memory/)     |
+---------------------------+----------------------------+
                            |
+---------------------------v----------------------------+
|            Sovereign Air-Gapped File System            |
|       (100% Data Ownership, Zero External Leaks)       |
+--------------------------------------------------------+
```

### Standard Directory Hierarchy

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

### Metadata Standard (YAML Frontmatter)

Every markdown document MUST include structured frontmatter for sitemapping:

```yaml
---
type: concept | project | reference | sop
title: "Document Title"
name: "kebab-case-slug"
metadata:
  type: project
  modified: '2026-08-20T15:00:00.000Z'
  node_type: memory
description: >-
  Concise 1-3 line summary of document purpose and current status.
---
```

---

## Portfolio Build 02: Network Security Layer & Gateway Shield

### Architectural Pipeline
The security gateway enforces a 4-layer defense pipeline on all outbound traffic:

```text
Client Node (Mac Mini / Phone / Tablet / Edge Compute)
  |--> Layer 1: Zero-Trust WireGuard Mesh (Tailscale 100.x.x.x)
        |--> Layer 2: Network-Level Sinkhole (Pi-hole Port 53 -> 0.0.0.0)
              |--> Layer 3: Encrypted DoH & Fast Fallback (dnsproxy Port 5053)
                    Primary: NextDNS Profile 2161aa DoH
                    Fallback: Local Unbound Recursive Resolver (127.0.0.1:5335)
                    |--> Layer 4: Commercial Egress Tunnel (Surfshark WireGuard Table 200)
```

### Key Technical Specifications
1. **Primary Upstream:** NextDNS Profile `2161aa` over TLS/DoH for security filtering, ad-blocking, and telemetry sinkholing.
2. **Fallback Resolver:** Local Unbound recursive root resolver (`127.0.0.1:5335`) on Debian 13. Automatically handles queries if NextDNS experiences latency or network degradation.
3. **Egress Isolation:** Policy routing via Table 200 separates commercial VPN egress (Singapore / Indonesia) from Tailscale intranet routing (Table 52) and local subnet traffic.

---

## Client Data Protection Protocol

When deploying INFJ AI frameworks on client hardware:
1. **Air-Gapped Vaults:** Client vault directories remain 100% isolated. No private vault files or credentials are copied to client nodes.
2. **Local FTS Indexing:** Search indexing operates strictly on local client files.
3. **Isolated API Credentials:** Client nodes execute using dedicated API credentials.

---

## INFJcrypto Masterclass Integration

This repository forms the practical implementation backbone for INFJcrypto Masterclass modules:
- **Module 4:** Building Your Own Agentic Brain OS (Hands-On Memory & RAG Architecture)
- **Module 5:** Homelab Defense & Security Gateway Engineering

---

## Author & License

Developed by **Gin** ([@gin_cryptodiary](https://x.com/gin_cryptodiary)).  
Released under the [MIT License](LICENSE).
