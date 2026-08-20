#!/usr/bin/env bash
# ==============================================================================
# INFJ AI — Sovereign Host & Agentic System Master Setup
# Developed by Gin (https://x.com/gin_cryptodiary)
# Repository: https://github.com/saturninfj/infj-ai
# ==============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

show_menu() {
    echo "========================================================================"
    echo "INFJ AI — Sovereign Compute, Security & Memory Orchestrator"
    echo "Developed by Gin (https://x.com/gin_cryptodiary)"
    echo "========================================================================"
    echo "Select Deployment Phase:"
    echo "  [1] Phase 1: Network Security Layer & Gateway Shield (NextDNS + Unbound)"
    echo "  [2] Phase 2: Agentic Brain Vault & Memory OS (Directory + Frontmatter)"
    echo "  [3] Phase 3: Complete Sequential Deployment (Phase 1 + Phase 2)"
    echo "  [0] Exit"
    echo "========================================================================"
    read -p "Enter choice [0-3]: " CHOICE

    case "$CHOICE" in
        1)
            echo "[INFJ AI] Executing Phase 1: Security Layer Setup..."
            bash -c "$(curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/install-security.sh)"
            ;;
        2)
            echo "[INFJ AI] Executing Phase 2: Agentic Brain Stack Setup..."
            bash -c "$(curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/install-brain.sh)"
            ;;
        3)
            echo "[INFJ AI] Executing Phase 1: Security Layer Setup..."
            bash -c "$(curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/install-security.sh)"
            echo -e "\n[INFJ AI] Executing Phase 2: Agentic Brain Stack Setup..."
            bash -c "$(curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/install-brain.sh)"
            echo -e "\n[INFJ AI] Full Sequential Deployment Completed Successfully."
            ;;
        0)
            echo "[INFJ AI] Exiting setup."
            exit 0
            ;;
        *)
            echo "[INFJ AI] Invalid selection."
            exit 1
            ;;
    esac
}

show_menu
