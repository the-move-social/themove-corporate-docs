#!/bin/bash
# Convert a markdown document to a signable PDF
# Usage: ./scripts/md2pdf.sh <input.md> [output.pdf]
#
# Requires: pandoc, weasyprint
#   brew install pandoc
#   pip install weasyprint

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"
CSS="$REPO_DIR/theme/pdf.css"

if [ $# -lt 1 ]; then
  echo "Usage: $0 <input.md> [output.pdf]"
  exit 1
fi

INPUT="$1"
BASENAME="$(basename "$INPUT" .md)"

if [ $# -ge 2 ]; then
  OUTPUT="$2"
else
  OUTPUT="$REPO_DIR/signed/${BASENAME}.pdf"
fi

# Check dependencies
if ! command -v pandoc &>/dev/null; then
  echo "Error: pandoc not found. Install with: brew install pandoc"
  exit 1
fi

if ! command -v weasyprint &>/dev/null; then
  echo "Error: weasyprint not found. Install with: pip install weasyprint"
  exit 1
fi

TMPHTML="$(mktemp /tmp/md2pdf-XXXXXX.html)"
trap "rm -f $TMPHTML" EXIT

pandoc "$INPUT" -o "$TMPHTML" --standalone --css="$CSS" --metadata title=""
weasyprint "$TMPHTML" "$OUTPUT" 2>&1 | grep -v "^WARNING:" || true

echo "Created: $OUTPUT"
