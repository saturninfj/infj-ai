# INFJ AI Architecture Portfolio & Master Setup

Sovereign AI Compute, Network Security Infrastructure, and Memory Architecture.  
Developed by **Gin** ([@gin_cryptodiary](https://x.com/gin_cryptodiary) / **INFJcrypto**).

---

## Architecture Design Rationale: Single Unified Portfolio vs Micro-Repos

Maintaining a **single unified repository (`saturninfj/infj-ai`)** is superior to creating fragmented sub-repositories. It provides:
1. **Single Source of Truth:** Clients and students reference one master repository instead of managing multiple decoupled repositories.
2. **Sequential 3-Phase Guided Deployment:** Installation is structured in strict logical order (Security -> Memory OS -> Agent Skills).
3. **Master Interactive Orchestrator:** A single 1-line command launches an interactive menu to deploy Phase 1, Phase 2, or the entire stack.

---

## ⚡ Master 1-Line Setup

Run this command on the target system (macOS / Linux / WSL) to launch the guided interactive installer:

```bash
curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/setup.sh | bash
```

---

## 🗺️ Sequential 3-Phase Guided Roadmap

```text
+-----------------------------------------------------------------------+
|  PHASE 1: NETWORK SECURITY LAYER & GATEWAY SHIELD                     |
|  (Tailscale WireGuard + Pi-hole + NextDNS 2161aa + Unbound Fallback)  |
+-----------------------------------v-----------------------------------+
                                    |
+-----------------------------------v-----------------------------------+
|  PHASE 2: AGENTIC BRAIN VAULT & MEMORY OS                             |
|  (Directory Hierarchy + YAML Metadata Standards + GBrain Indexing)    |
+-----------------------------------v-----------------------------------+
                                    |
+-----------------------------------v-----------------------------------+
|  PHASE 3: AGENTIC EXECUTION & RAG CITATIONS                           |
|  (Citations API + Files API + Anti-Hallucination SOP Rules)           |
+-----------------------------------------------------------------------+
```

---

### PHASE 1: Network Security Layer & Gateway Shield

Before initializing data or running AI agents, the host system MUST be secured at the network layer.

#### Direct Script Execution
```bash
curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/install-security.sh | bash
```

#### Technical Specifications
```text
Client Node (Mac Mini / Phone / Tablet / Edge Compute)
  |--> Layer 1: Zero-Trust WireGuard Mesh (Tailscale 100.x.x.x)
        |--> Layer 2: Network-Level Sinkhole (Pi-hole Port 53 -> 0.0.0.0)
              |--> Layer 3: Encrypted DoH & Fast Fallback (dnsproxy Port 5053)
                    Primary: NextDNS Profile 2161aa DoH
                    Fallback: Local Unbound Recursive Resolver (127.0.0.1:5335)
                    |--> Layer 4: Commercial Egress Tunnel (Surfshark WireGuard Table 200)
```

1. **Primary Upstream:** NextDNS Profile `2161aa` over TLS/DoH for security filtering and telemetry blocking.
2. **Fallback Resolver:** Local Unbound recursive root resolver (`127.0.0.1:5335`). Automatically handles queries if NextDNS experiences latency or network failure.
3. **Egress Isolation:** Policy routing via Table 200 isolates commercial VPN egress (Singapore / Indonesia) from Tailscale intranet routing (Table 52).

---

### PHASE 2: Agentic Brain Vault & Memory OS

Once the host network is hardened, initialize the structured memory architecture.

#### Direct Script Execution
```bash
curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/install-brain.sh | bash
```

#### Directory Hierarchy
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

#### Metadata Standard (YAML Frontmatter)
Every markdown document MUST include structured frontmatter for LLM sitemapping:

```yaml
---
type: concept | project | reference | sop
title: "Document Title"
name: "kebab-case-slug"
metadata:
  type: project
  modified: '2026-08-20T15:40:00.000Z'
  node_type: memory
description: >-
  Concise 1-3 line summary of document purpose and current status.
---
```

---

### PHASE 3: Agentic Execution & RAG Citations

Connect search indexing and citation tools to enforce non-hallucinated AI workflows.

#### Golden Rules of Agentic Execution
1. **Search First (Anti-Hallucination):** Search local vault memory before generating content.
2. **Structured Frontmatter (Anti-Drift):** Maintain YAML frontmatter headers on all generated files.
3. **Strict Citation:** Reference exact file paths and line ranges (`file:///path/to/file#L10-L25`).

#### FTS5 Index Setup
```bash
bun install -g gbrain
gbrain config set vault_path "$HOME/vault"
gbrain sync --all --no-embed
```

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
