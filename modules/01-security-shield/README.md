# Module 01: Digital Bodyguard (Network Security Layer)

Step 1 of the INFJ AI system protects your computer and network before you run AI assistants or connect to online web services.

---

## What Does This Module Do?

Think of Module 01 as a private security guard for your internet connection.

```text
Your Computer / Phone / Tablet
  |--> Layer 1: Private Encrypted Tunnel (Tailscale Mesh)
        |--> Layer 2: Ad & Tracker Blocker (Pi-hole / Sinkhole)
              |--> Layer 3: Encrypted Web Lookup (NextDNS DoH Profile 2161aa)
                    Fallback: Fast Local Resolver (Unbound 127.0.0.1:5335)
                    |--> Layer 4: Commercial Egress Tunnel (Surfshark / WireGuard wg0)
```

1. **Blocks Intrusive Ads:** Filters out ad servers and unwanted tracking scripts automatically.
2. **Hides Your Web Activity:** Encrypts your DNS lookups using NextDNS (Profile 2161aa) so internet providers cannot log your browsing history.
3. **Zero-Downtime Backup:** If the primary encrypted DNS server slows down, your system automatically switches to a local backup resolver (`127.0.0.1:5335`) so your connection never drops.
4. **Outbound VPN Egress (Layer 4):** Supports WireGuard (`wg0`) outbound VPN tunneling. Place your provider's `.conf` file at `/etc/wireguard/wg0.conf` to route all outbound egress through a private VPN endpoint.

---

## Quick Installation Command

Open your **Terminal** app, paste this line, and press Enter:

```bash
curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/modules/01-security-shield/install.sh | bash
```

---

## How to Attach Your Outbound VPN (Layer 4)

To attach a commercial VPN (Surfshark, Mullvad, ProtonVPN, or custom WireGuard provider):

1. Download your WireGuard configuration file from your VPN provider.
2. Copy the file to `/etc/wireguard/wg0.conf`:
   ```bash
   sudo cp /path/to/your-vpn-config.conf /etc/wireguard/wg0.conf
   ```
3. Enable the VPN tunnel:
   ```bash
   sudo systemctl enable --now wg-quick@wg0
   ```
