#!/usr/bin/env bash
# ==============================================================================
# INFJ AI — Private AI Assistant & Security Installer
# Created by Gin (https://x.com/gin_cryptodiary)
# Repository: https://github.com/saturninfj/infj-ai
# ==============================================================================

set -euo pipefail

show_menu() {
    echo "========================================================================"
    echo "INFJ AI — Private AI Assistant & Security Setup"
    echo "Created by Gin (https://x.com/gin_cryptodiary)"
    echo "========================================================================"
    echo "Choose what you want to install:"
    echo "  [1] Module 01: Digital Bodyguard (Block ads, encrypt DNS, protect privacy)"
    echo "  [2] Module 02: Second Brain (Create organized folders for AI memory)"
    echo "  [3] Complete Setup (Install both Module 01 and Module 02)"
    echo "  [0] Exit"
    echo "========================================================================"
    read -p "Enter your choice [0-3]: " CHOICE

    case "$CHOICE" in
        1)
            echo "[INFJ AI] Starting Module 01: Installing Digital Bodyguard..."
            bash -c "$(curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/modules/01-security-shield/install.sh)"
            ;;
        2)
            echo "[INFJ AI] Starting Module 02: Installing Second Brain..."
            bash -c "$(curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/modules/02-agentic-brain/install.sh)"
            ;;
        3)
            echo "[INFJ AI] Starting Module 01: Installing Digital Bodyguard..."
            bash -c "$(curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/modules/01-security-shield/install.sh)"
            echo -e "\n[INFJ AI] Starting Module 02: Installing Second Brain..."
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
