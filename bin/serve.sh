#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
source .venv/bin/activate
#mkdocs serve
mkdocs serve --watch-theme --livereload