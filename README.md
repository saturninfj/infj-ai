# INFJ AI - Sovereign Private AI & Security System

Build your own private AI assistant, organized digital memory, and personal network shield.  
Created by **Gin** ([@gin_cryptodiary](https://x.com/gin_cryptodiary) / **INFJcrypto**).

---

## What is INFJ AI?

Most people use AI by typing prompts into a website, copying answers, and pasting them into documents. This manual approach has major drawbacks:
* **The AI forgets everything** the moment you start a new chat session.
* **The AI hallucinates** (makes up fake facts) because it has no access to your real notes or files.
* **Your private data gets sent to public servers** where you lose control over your privacy.

**INFJ AI** solves this by turning your computer into a private, sovereign AI workspace. It organizes your files into a "Second Brain" that your AI assistant can search, read, and cite with 100% accuracy.

---

## ⚡ Quickstart Setup (1-Line Master Command)

Run this single command in your terminal (macOS, Linux, or WSL) to start the step-by-step setup menu:

```bash
curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/setup.sh | bash
```

---

## 🗺️ Step-by-Step Setup Roadmap

INFJ AI is built in 3 simple phases:

```text
+-----------------------------------------------------------------------+
|  PHASE 1: DIGITAL BODYGUARD (Network Shield)                          |
|  Blocks ads, stops trackers, and encrypts your internet connection.   |
+-----------------------------------v-----------------------------------+
                                    |
+-----------------------------------v-----------------------------------+
|  PHASE 2: SECOND BRAIN (Memory OS)                                    |
|  Organizes your notes so your AI assistant never loses context.       |
+-----------------------------------v-----------------------------------+
                                    |
+-----------------------------------v-----------------------------------+
|  PHASE 3: AI ASSISTANT (Smart Workflows)                              |
|  Teaches your AI assistant to search your notes and quote sources.   |
+-----------------------------------------------------------------------+
```

---

### PHASE 1: Digital Bodyguard (Network Shield)

Before giving an AI assistant access to your work, protect your computer from internet snooping, intrusive ads, and data leaks.

#### How to Install Phase 1
```bash
curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/install-security.sh | bash
```

#### What Phase 1 Does For You
1. **Blocks Ads and Trackers:** Automatically filters out malicious domains and telemetry trackers before they reach your browser.
2. **Encrypts DNS Lookups:** Uses NextDNS (Profile 2161aa) to hide your browsing activity from your internet provider.
3. **Backup Protection:** If the primary encrypted DNS server slows down, your system instantly switches to a local resolver so your internet connection never drops.

---

### PHASE 2: Second Brain (Memory OS)

Now that your network is secure, set up your organized file system so your AI assistant can read and update your work.

#### How to Install Phase 2
```bash
curl -fsSL https://raw.githubusercontent.com/saturninfj/infj-ai/main/install-brain.sh | bash
```

#### Your Folder Structure
Your notes are organized into 5 clean folders inside `~/vault`:

```text
~/vault/
├── Brain/         # System rules, guidelines, and handoff notes
├── Memory/        # Permanent reference notes (your single source of truth)
├── Projects/      # Active projects you are working on right now
├── Research/      # Articles, web scrapes, and market research
└── Daily/         # Daily work logs and transcripts
```

#### The Secret to AI Memory: Header Tags
Every note in your vault includes a short summary header (called YAML Frontmatter) at the top of the file:

```yaml
---
type: project
title: "Launch INFJ Course"
name: "launch-infj-course"
description: "Master plan for launching the INFJcrypto AI course."
---
```

**Why this matters:** When you ask your AI assistant a question, it quickly scans these headers first instead of reading through thousands of long files. This keeps answers fast and 100% relevant.

---

### PHASE 3: AI Assistant (Smart Workflows)

Teach your AI assistant how to interact with your Second Brain.

#### The 3 Rules for Your AI Assistant
1. **Search Before Answering:** Your AI must search your local notes first instead of guessing or making up answers.
2. **Keep Summaries Updated:** When your AI creates a new note, it automatically adds the summary header.
3. **Always Quote Sources:** Your AI links directly to the exact file and line number it used to answer your question.

---

## Privacy Protocol for Client Devices

When setting up INFJ AI on a client or secondary computer:
1. **100% Private File System:** The client receives their own fresh, empty vault. Your personal files and notes are never copied to client machines.
2. **Local Processing:** Searching and indexing happens locally on the client machine.
3. **Separate Credentials:** The client uses their own account keys.

---

## INFJcrypto Course Integration

This framework powers the practical lessons in the **INFJcrypto Masterclass**:
* **Module 4:** Building Your Own Agentic Brain OS
* **Module 5:** Homelab Security & Network Shield Setup

---

## Author & License

Created by **Gin** ([@gin_cryptodiary](https://x.com/gin_cryptodiary)).  
Released under the [MIT License](LICENSE).
