# API Vulnerability Testing with VoAPI2

This project documents API vulnerability testing using the VoAPI2 tool on:

- **Appwrite**
- **Gitea**
- **Jellyfin**

---

## 🔧 Tools Used
- **VoAPI2** (open-source vulnerability scanner for REST APIs)

---

## 📁 Project Structure

specs/ # OpenAPI specs for each API (YAML) tools/VoAPI2/ # VoAPI2 test runner and input files results/ # Findings per application scripts/ # Start services and run tests configs/ # Tokens (if used) docs/rapport.pdf # Final written report


---

## ▶️ How to Use

1. Start Docker containers:
```bash
bash scripts/start_servers.sh

2. Run all VoAPI2 tests:
bash scripts/run_tests.sh

This will scan Appwrite, Gitea and Jellyfin using run_voapi2.sh.

🧾 Results

results/Appwrite/findings.md
results/Gitea/findings.md
results/Jellyfin/findings.md

Raw VoAPI2 output files are stored in:
tools/VoAPI2/output/[app]/



