#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
python3 -m pip install -r requirements.txt
python3 src/render.py --fps 24 --output output/sisyphus.mp4
