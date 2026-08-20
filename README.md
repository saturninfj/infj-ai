# INFJ AI - Sovereign Private AI & Security System

Turn your computer into a private AI workspace with an organized memory and built-in network security.  
Created by **Gin** ([@gin_cryptodiary](https://x.com/gin_cryptodiary) / **INFJcrypto**).

---

## Why INFJ AI Exists

Most people use AI by typing prompts into a browser tab. While it feels impressive at first, you quickly hit major limitations:

1. **Short-Term Amnesia:** The moment you close the browser or open a new chat, the AI forgets everything about you, your business, and your past decisions.
2. **Hallucinations:** When the AI does not know the answer, it makes up fake facts instead of checking your real files.
3. **Privacy Exposure:** Your private ideas, strategic notes, and customer data are uploaded to public cloud servers.

**INFJ AI** fixes this. It sets up a private workspace directly on your computer, giving your AI assistant a structured "Second Brain" that never forgets, never makes up facts, and keeps 100% of your data private.

---

## ⚡ Quickstart Setup (1-Line Master Command)

If you are new to the terminal, do not worry. Open the **Terminal** app on your Mac or Linux computer, paste this single line, and press Enter:

```bash
curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/setup.sh | bash
```

You will see a simple menu on your screen asking which step you want to install.

---

## 🗺️ Step-by-Step Setup Guide

INFJ AI is set up in 2 simple steps:

```text
+-----------------------------------------------------------------------+
|  STEP 1: DIGITAL BODYGUARD (Network Security Layer)                  |
|  Filters ads, stops trackers, and encrypts your internet connection.  |
+-----------------------------------v-----------------------------------+
                                    |
+-----------------------------------v-----------------------------------+
|  STEP 2: DIGITAL FILING CABINET (Agentic Brain Memory OS)             |
|  Organizes your notes into smart folders that your AI can search.     |
+-----------------------------------------------------------------------+
```

---

### STEP 1: Digital Bodyguard (Network Security Layer)

Think of Step 1 as hiring a private security guard for your digital door. Before letting an AI assistant manage your work, you want to make sure no outside trackers or internet snoops can watch what you are doing.

#### How to Install Step 1 Only
```bash
curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/modules/01-security-shield/install.sh | bash
```

#### What Step 1 Does For You
* **Stops Intrusive Ads and Trackers:** Automatically blocks unwanted advertisement servers and data collectors before they reach your screen.
* **Locks Your Browsing Lookups:** Encrypts your DNS requests using NextDNS (Profile 2161aa) so your internet provider cannot log the websites you visit.
* **Automatic Failover:** If the primary encrypted server experiences latency, your system instantly switches to a local backup resolver (`127.0.0.1:5335`) so your internet never disconnects.

---

### STEP 2: Digital Filing Cabinet (Agentic Brain Memory OS)

Step 2 creates an organized folder system on your computer called `~/vault`. Think of it as a smart filing cabinet where every file has a summary label on top.

#### How to Install Step 2 Only
```bash
curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/modules/02-agentic-brain/install.sh | bash
```

#### How Your Files Are Organized
Inside your `~/vault` folder, your work is divided into 5 clean sections:

```text
~/vault/
├── Brain/         # System rules, guidelines, and handoff notes
├── Memory/        # Permanent reference notes (your single source of truth)
├── Projects/      # Active projects you are working on right now
├── Research/      # Articles, web scrapes, and market research
└── Daily/         # Daily work logs and execution transcripts
```

#### The Secret: Smart Header Tags
Every document in your filing cabinet has a short summary header (called YAML Frontmatter) at the very top:

```yaml
---
type: project
title: "Launch INFJ Course"
name: "launch-infj-course"
description: "Master plan for launching the INFJcrypto AI course."
---
```

**Why this is important:** When you ask your AI assistant a question, it does not waste time reading through thousands of long documents. It scans these short summary headers first, locates the exact file needed, and answers your question in seconds with zero mistakes.

---

## ❓ Frequently Asked Questions (FAQ)

### Q1: Why does ChatGPT or Claude keep forgetting my instructions?
Regular web chats do not save your files locally. Once a chat context fills up, the AI drops older details to save memory. INFJ AI solves this by keeping a permanent index on your hard drive that the AI checks every single session.

### Q2: Is my private data safe when setting this up on a client machine?
Yes, 100%. When you install INFJ AI on a client or secondary computer, it creates a fresh, empty workspace (`~/vault`). Your personal notes, financial data, and private files are never copied to external computers.

### Q3: Do I need programming experience to use this?
No. You only need to paste the 1-line installation command into your terminal once. After setup, you interact with your notes and AI assistant using standard markdown text files.

---

## Ecosystem Links & INFJcrypto Course

This framework powers the practical curriculum in the **[INFJcrypto Masterclass](https://infjcrypto.com)**:
* **Module 4:** Building Your Own Agentic Brain OS
* **Module 5:** Homelab Security & Network Shield Setup

### Product Ecosystem
* **Course & Curriculum:** [infjcrypto.com](https://infjcrypto.com)
* **Autonomous Operations Engine:** [getlyfe.xyz](https://getlyfe.xyz)
* **Trader Terminal & Macro Intelligence:** [cryptodiary.club](https://cryptodiary.club)

---

## Author & License

Created by **Gin** ([@gin_cryptodiary](https://x.com/gin_cryptodiary)).  
Released under the [MIT License](LICENSE).
