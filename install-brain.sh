#!/usr/bin/env bash
# ==============================================================================
# INFJ AI — Root Alias for Module 02: Agentic Brain Vault & Memory OS
# Developed by Gin (https://x.com/gin_cryptodiary)
# Repository: https://github.com/saturninfj/infj-ai
# ==============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec bash "${SCRIPT_DIR}/modules/02-agentic-brain/install.sh" "$@"
