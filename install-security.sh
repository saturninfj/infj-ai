#!/usr/bin/env bash
# ==============================================================================
# INFJ AI — Network Security Layer & DNS Shield Installer
# Developed by Gin (https://x.com/gin_cryptodiary)
# Repository: https://github.com/saturninfj/infj-ai
# ==============================================================================

set -euo pipefail

NEXTDNS_PROFILE="${1:-2161aa}"

echo "[INFJ AI] Initializing Network Security Layer & DNS Shield..."
echo "[INFJ AI] Primary Upstream: NextDNS Profile ${NEXTDNS_PROFILE}"
echo "[INFJ AI] Fallback Upstream: Local Unbound Recursive Resolver (127.0.0.1:5335)"

# 1. Install Unbound if missing
if ! command -v unbound >/dev/null 2>&1; then
    echo "[INFJ AI] Installing Unbound package..."
    sudo apt-get update -qq && sudo apt-get install -y -qq unbound
fi

# 2. Configure Unbound on Port 5335
sudo tee /etc/unbound/unbound.conf.d/pi-hole.conf > /dev/null << 'EOF'
server:
    verbosity: 1
    interface: 127.0.0.1@5335
    port: 5335
    do-ip4: yes
    do-udp: yes
    do-tcp: yes
    do-ip6: no

    access-control: 127.0.0.0/8 allow

    hide-identity: yes
    hide-version: yes

    harden-glue: yes
    harden-dnssec-stripped: yes
    use-caps-for-id: no
    edns-buffer-size: 1232

    prefetch: yes
    num-threads: 1
    msg-cache-size: 64m
    rrset-cache-size: 128m
EOF

sudo unbound-checkconf
sudo systemctl restart unbound

# 3. Configure dnsproxy service with NextDNS Primary & Unbound Fallback
if [ -f /usr/local/bin/dnsproxy ]; then
    sudo tee /etc/systemd/system/dnsproxy.service > /dev/null << EOF
[Unit]
Description=AdGuard dnsproxy (DoH to NextDNS ${NEXTDNS_PROFILE} with Unbound Fallback)
After=network-online.target unbound.service
Wants=network-online.target

[Service]
Type=simple
ExecStart=/usr/local/bin/dnsproxy --listen=127.0.0.1 --port=5053 --upstream=https://dns.nextdns.io/${NEXTDNS_PROFILE} --fallback=127.0.0.1:5335 --bootstrap=1.1.1.1:53 --bootstrap=9.9.9.9:53 --cache --cache-size=10000
Restart=on-failure
RestartSec=5
User=root

[Install]
WantedBy=multi-user.target
EOF

    sudo systemctl daemon-reload
    sudo systemctl restart dnsproxy
    echo "[INFJ AI] dnsproxy reconfigured and restarted."
fi

echo "[INFJ AI] Network Security Layer configuration complete."
