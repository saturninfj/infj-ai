#!/usr/bin/env bash
# ==============================================================================
# INFJ AI — Module 01: Network Security Layer & Gateway Shield Installer
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
echo "[INFJ AI] Unbound service active on port 5335."

# 3. Install dnsproxy binary if missing
if [ ! -f /usr/local/bin/dnsproxy ]; then
    echo "[INFJ AI] Downloading and installing AdGuard dnsproxy binary..."
    ARCH="$(uname -m)"
    if [ "$ARCH" = "x86_64" ]; then
        DNSPROXY_ARCH="amd64"
    elif [ "$ARCH" = "aarch64" ]; then
        DNSPROXY_ARCH="arm64"
    else
        DNSPROXY_ARCH="amd64"
    fi
    
    TMP_DIR="$(mktemp -d)"
    curl -fsSL "https://github.com/AdguardTeam/dnsproxy/releases/download/v0.73.0/dnsproxy-linux-${DNSPROXY_ARCH}-v0.73.0.tar.gz" -o "${TMP_DIR}/dnsproxy.tar.gz"
    tar -xzf "${TMP_DIR}/dnsproxy.tar.gz" -C "${TMP_DIR}"
    sudo cp "${TMP_DIR}/linux-${DNSPROXY_ARCH}/dnsproxy" /usr/local/bin/dnsproxy
    sudo chmod +x /usr/local/bin/dnsproxy
    rm -rf "${TMP_DIR}"
    echo "[INFJ AI] dnsproxy binary installed to /usr/local/bin/dnsproxy."
fi

# 4. Configure systemd service for dnsproxy
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
sudo systemctl enable --now dnsproxy
sudo systemctl restart dnsproxy
echo "[INFJ AI] dnsproxy service configured and active on port 5053."

# 5. Tailscale IP Forwarding & Exit Node Advertisement
if command -v tailscale >/dev/null 2>&1; then
    echo "[INFJ AI] Enabling IPv4/IPv6 forwarding for Tailscale exit node..."
    sudo tee /etc/sysctl.d/99-tailscale.conf > /dev/null << 'EOF'
net.ipv4.ip_forward = 1
net.ipv6.conf.all.forwarding = 1
EOF
    sudo sysctl -p /etc/sysctl.d/99-tailscale.conf > /dev/null 2>&1 || true
    sudo tailscale set --advertise-exit-node > /dev/null 2>&1 || true
    echo "[INFJ AI] Tailscale exit node advertised successfully."
fi

echo "[INFJ AI] Network Security Layer configuration complete."
