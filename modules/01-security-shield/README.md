# Module 01: Digital Bodyguard (Network Security Layer)

Step 1 of the INFJ AI system protects your computer and network before you run AI assistants or connect to online web services.

---

## What Does This Module Do?

Think of Module 01 as a private security guard for your internet connection.

```text
Your Computer / Phone / Tablet
  |--> Step 1: Private Encrypted Tunnel (Tailscale)
        |--> Step 2: Ad & Tracker Blocker (Pi-hole)
              |--> Step 3: Encrypted Web Lookup (NextDNS DoH Profile 2161aa)
                    Fallback: Fast Local Resolver (Unbound 127.0.0.1:5335)
                    |--> Step 4: Outbound Protection (Surfshark VPN)
```

1. **Blocks Intrusive Ads:** Filters out ad servers and unwanted tracking scripts automatically.
2. **Hides Your Web Activity:** Encrypts your DNS lookups using NextDNS (Profile 2161aa) so internet providers cannot log your browsing history.
3. **Zero-Downtime Backup:** If the primary encrypted DNS server slows down, your system automatically switches to a local backup resolver (`127.0.0.1:5335`) so your connection never drops.

---

## Quick Installation Command

Open your **Terminal** app, paste this line, and press Enter:

```bash
curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/modules/01-security-shield/install.sh | bash
```
