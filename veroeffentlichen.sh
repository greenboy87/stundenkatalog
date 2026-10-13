#!/bin/bash
# Stundenkatalog neu erzeugen und auf GitHub Pages veröffentlichen.
set -euo pipefail

REPO="$HOME/github-projekte/stundenkatalog"
KATALOG="$HOME/Library/Mobile Documents/com~apple~CloudDocs/3_Unterrichtsstunden/Musikseminarsave/_Katalog"

cd "$REPO"
git pull --ff-only

python3 "$KATALOG/katalog_aktualisieren.py" --repo "$REPO"

git add index.html
if git diff --cached --quiet; then
  echo "Keine Änderungen – nichts zu veröffentlichen."
else
  git commit -q -m "Katalog aktualisiert $(date +%Y-%m-%d)"
  git push -q
  echo "Veröffentlicht."
fi
