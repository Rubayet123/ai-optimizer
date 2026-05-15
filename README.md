# AI Optimizer Suite 🚀

A centralized toolkit for optimizing AI-assisted development. This suite reduces token costs, improves context accuracy, and streamlines the "Antigravity" workflow.

## Included Tools
- **RTK (Rust Token Killer):** Compresses terminal output to save ~90% on token usage.
- **ECC (Error Correction Code):** *Coming Soon* - Automated context fixing and error handling.

## 🛠 Installation
Clone the repo and run the master setup:
1. `git clone https://github.com/Rubayet123/ai-optimizer-suite.git`
2. Right-click `setup.bat` -> **Run as Administrator**.
3. Choose your tools from the menu.

## Requirements
- Windows 11
- PowerShell 5.0+ (Standard)



---
# List of all the optimization:
---
## 🧠 1. RTK (Rust Token Killer)

RTK acts as a "filter" between your terminal commands and the AI. Instead of sending a 500-line error log to the LLM (which costs money and eats up context), RTK identifies the "signal" and removes the "noise."

### Why it's a Game Changer:

* **Cost Efficiency:** Dramatically lowers the burn rate of API credits.
* **Better Accuracy:** By removing redundant logs, the AI focuses only on the code that actually needs fixing.
* **Antigravity Ready:** Automatically integrates with Google Antigravity’s rule system.

---

## ⚡ Useful Commands (Cheatsheet)

### 📊 Monitoring Savings

| Command | Description |
| --- | --- |
| `rtk gain` | **The Scoreboard.** Shows total tokens and dollars saved. |
| `rtk gain --graph` | Displays an ASCII graph of savings over the last 30 days. |
| `rtk gain --history` | Lists recent commands and their specific compression ratios. |

### 🛠 Manual Usage (CLI)

While your AI Agent uses these automatically, you can run them manually to keep your own terminal clean:

* **Git Optimization:**
* `rtk git status` — Returns a ultra-compact status.
* `rtk git diff` — Condenses changes to logic only (ignores whitespace/boilerplate).


* **Development & Tests:**
* `rtk npm test` / `rtk cargo test` — Hides passing tests; only shows the AI why a test *failed*.
* `rtk tsc` — Groups TypeScript errors by file for easier debugging.


* **Smart Discovery:**
* `rtk ls .` — Generates a token-optimized directory tree.
* `rtk read <file>` — Reads a file but strips comments/whitespace to save context.



---

## 🔧 Maintenance & Troubleshooting

* **Update Global Rules:** If Antigravity stops recognizing RTK, run:

```powershell
    rtk init -g --agent antigravity
    ```
*   **Update Binary:** Simply run the `setup.bat` again; it will fetch the latest release from GitHub.
*   **Verification:** Run `rtk --version` to ensure the system PATH is correctly configured.

---

To keep your documentation organized, here is a dedicated **README.md** section specifically for the **ECC (Everything Claude Code)** integration. This explains how the AI's "intelligence" is upgraded for your specific stack.

---

## 🧠 ECC (Everything Claude Code) Integration

**ECC** acts as the "Brain" of this suite. While RTK handles the data volume, ECC injects high-level architectural rules and specialized knowledge into your AI Agent (Google Antigravity). This ensures the AI writes code that follows the best practices of your specific tech stack.


### 🛠 How it Works in Antigravity

The setup script automatically deploys **Persona Rules** into your `.agent/rules` (local) and `%USERPROFILE%\.gemini\antigravity\rules` (global) directories.

* **Zero-Config Intelligence:** You don't need to remind the AI you are using Kotlin or Expo; it detects your project files and automatically applies the corresponding ECC rule-set.
* **Slash Commands:** Enables advanced workflows like `/review` (full code audit) or `/tdd` (Test-Driven Development mode) directly within the Antigravity chat.

### 🔧 Manual Rule Sync

If you add new rules or want to force a refresh of the language intelligence:

```powershell
# Re-run the ECC installer specifically
node %TEMP%\ecc_source\scripts\install.js --target antigravity common kotlin flutter react typescript python

```

---
> **Note:** This suite is intended for power users optimizing high-frequency AI coding sessions. Always run the setup script as an Administrator to ensure System PATH updates are successful.

```
