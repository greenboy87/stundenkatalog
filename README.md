# Stundenkatalog Musik

Mein Katalog der Musik-Unterrichtsstunden als Webseite (GitHub Pages):
**https://greenboy87.github.io/stundenkatalog/**

Die Seite enthält nur Stundentitel, Tags und Dateinamen – keine Unterrichtsinhalte,
keine Schülerdaten. Suchmaschinen sind ausgesperrt (`robots.txt`, `noindex`).

Die Links öffnen die Dateien über Kurzbefehle direkt aus iCloud
(„Katalog öffnen“ am Mac, „Katalog öffnen iOS“ auf iPhone/iPad).

## Aktualisieren

Doppelklick auf **„Katalog veröffentlichen.command“** im Ordner
`Musikseminarsave/_Katalog`. Das ruft `veroeffentlichen.sh` auf:

1. `git pull`
2. `katalog_aktualisieren.py --repo ~/github-projekte/stundenkatalog` erzeugt `index.html`
3. Commit „Katalog aktualisiert JJJJ-MM-TT“ und `git push` – nur wenn sich etwas geändert hat

Quelle bleiben `katalog_aktualisieren.py`, `vorlage.html` und `stunden.csv` im iCloud-Ordner
`_Katalog`. Die `index.html` hier nie von Hand bearbeiten.
