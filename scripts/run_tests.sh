#!/bin/bash

# run_tests.sh
# Run only VoAPI2 tests on all APIs

set -e

echo "[+] Running VoAPI2 scans..."
bash tools/VoAPI2/run_voapi2.sh

echo "[✓] All VoAPI2 scans completed. Check results/ folders for output."
