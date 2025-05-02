#!/usr/bin/env sh

# run_voapi2.sh
# Script to run VoAPI2 against multiple OpenAPI specifications

set -e  # Exit on error

echo "[VoAPI2] Starting API vulnerability testing..."

# Path to VoAPI2 directory (change this to your actual path if needed)
VOAPI2_DIR="~/tools/VoAPI2"

# Array of specs
SPECS=("specs/appwrite_openapi.yaml" "specs/gitea_openapi.yaml" "specs/jellyfin_openapi.yaml")

# Loop through each spec and run VoAPI2 with optional input
for SPEC in "${SPECS[@]}"; do
    echo "[VoAPI2] Running test for $SPEC"

    # Determine which app we're testing
    if [[ "$SPEC" == *"gitea"* ]]; then
        python3 $VOAPI2_DIR/main.py \
          --spec $SPEC \
          --params tools/VoAPI2/input/gitea/Param-gitea.json \
          --headers tools/VoAPI2/input/gitea/Header-gitea.json

    elif [[ "$SPEC" == *"jellyfin"* ]]; then
        python3 $VOAPI2_DIR/main.py \
          --spec $SPEC \
          --params tools/VoAPI2/input/jellyfin/Param-jellyfin.json \
          --headers tools/VoAPI2/input/jellyfin/Header-jellyfin.json

    else
        # Default: run only with spec (e.g., Appwrite if no input files available)
        python3 $VOAPI2_DIR/main.py --spec $SPEC
    fi

    echo "[VoAPI2] Completed test for $SPEC"
    echo "-------------------------------------------"
done

echo "[VoAPI2] All scans completed. See output folder for results."
