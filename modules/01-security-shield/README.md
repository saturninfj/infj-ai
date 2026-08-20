# Module 01: Network Security Layer & Gateway Shield

This module hardens the host and local network before running AI agents or consuming remote web services.

---

## Architecture Overview

```text
Client Node (Mac Mini / Phone / Tablet / Edge Compute)
  |--> Layer 1: Zero-Trust WireGuard Mesh (Tailscale 100.x.x.x)
        |--> Layer 2: Network-Level Sinkhole (Pi-hole Port 53 -> 0.0.0.0)
              |--> Layer 3: Encrypted DoH & Fast Fallback (dnsproxy Port 5053)
                    Primary: NextDNS Profile 2161aa DoH
                    Fallback: Local Unbound Recursive Resolver (127.0.0.1:5335)
                    |--> Layer 4: Commercial Egress Tunnel (Surfshark WireGuard Table 200)
```

---

## Key Features

1. **NextDNS DoH (Profile 2161aa):** Primary encrypted DNS resolution with cloud ad-blocking and security filtering.
2. **Local Unbound Fallback (`127.0.0.1:5335`):** Recursive root DNS resolver acting as an instant, zero-latency fallback if NextDNS is unavailable.
3. **Egress Isolation:** Policy routing via Table 200 isolates commercial VPN egress from internal Tailnet routing (Table 52).

---

## Installation

Run the module installer directly:

```bash
curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/modules/01-security-shield/install.sh | bash
```
