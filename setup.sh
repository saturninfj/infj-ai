#!/usr/bin/env bash
# ==============================================================================
# INFJ AI — Sovereign Host & Agentic System Master Setup
# Created by Gin (https://x.com/gin_cryptodiary)
# Repository: https://github.com/saturninfj/infj-ai
# ==============================================================================

set -euo pipefail

# 1. Non-Interactive Fallback (Auto-install Full Stack: Security + Brain)
if [ ! -t 0 ]; then
    echo "[INFJ AI] Non-interactive execution detected."
    echo "[INFJ AI] Starting Phase 1: Installing Digital Bodyguard (Network Security Layer)..."
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/modules/01-security-shield/install.sh)"
    
    echo -e "\n[INFJ AI] Starting Phase 2: Installing Second Brain (Agentic Memory OS)..."
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/modules/02-agentic-brain/install.sh)"
    
    echo -e "\n[INFJ AI] Complete INFJ AI Stack (Security + Memory OS) Installed Successfully!"
    exit 0
fi

# 2. Interactive Terminal Menu
show_menu() {
    echo "========================================================================"
    echo "INFJ AI — Private AI Assistant & Security Setup"
    echo "Created by Gin (https://x.com/gin_cryptodiary)"
    echo "========================================================================"
    echo "Choose what you want to install:"
    echo "  [1] Phase 1: Digital Bodyguard (Block ads, encrypt DNS, protect privacy)"
    echo "  [2] Phase 2: Second Brain (Create organized folders for AI memory)"
    echo "  [3] Complete Setup (Install both Phase 1 and Phase 2) [DEFAULT]"
    echo "  [0] Exit"
    echo "========================================================================"
    read -p "Enter your choice [0-3] (Default: 3): " CHOICE
    CHOICE="${CHOICE:-3}"

    case "$CHOICE" in
        1)
            echo "[INFJ AI] Starting Phase 1: Installing Digital Bodyguard..."
            bash -c "$(curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/modules/01-security-shield/install.sh)"
            ;;
        2)
            echo "[INFJ AI] Starting Phase 2: Installing Second Brain..."
            bash -c "$(curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/modules/02-agentic-brain/install.sh)"
            ;;
        3)
            echo "[INFJ AI] Starting Phase 1: Installing Digital Bodyguard..."
            bash -c "$(curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/modules/01-security-shield/install.sh)"
            echo -e "\n[INFJ AI] Starting Phase 2: Installing Second Brain..."
            bash -c "$(curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/modules/02-agentic-brain/install.sh)"
            echo -e "\n[INFJ AI] Complete setup finished successfully!"
            ;;
        0)
            echo "[INFJ AI] Exiting setup."
            exit 0
            ;;
        *)
            echo "[INFJ AI] Invalid selection. Please choose 0, 1, 2, or 3."
            exit 1
            ;;
    esac
}

show_menu
