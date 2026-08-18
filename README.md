# stgallen-cd-skill

Ein [Claude Code Skill](https://docs.claude.com/en/docs/claude-code/skills), der die Corporate-Design-Vorgaben der Stadt St.Gallen für Claude nutzbar macht.

## Inhalt

Der Skill fasst den offiziellen Frontify-Style-Guide der Stadt St.Gallen zusammen (Logo, Farben, Schriften, Bilder, Geschäftsausstattung, Publikationen, digitale Medien, Beschriftungen) und macht ihn für drei Anwendungsfälle nutzbar:

1. **Nachschlagen** — Fragen zu Logo, Farben, Schriften, Anwendungsformen direkt beantworten.
2. **Konsistenzprüfung** — Texte, Entwürfe oder Code (z.B. CSS) gegen die CD-Vorgaben abgleichen und Abweichungen benennen.
3. **Erstellung** — CD-konforme Bausteine liefern (Farbvariablen, Font-Stacks, Strukturvorschläge), basierend auf den hinterlegten Werten.

## Struktur

```
.claude/skills/stgallen-cd/
├── SKILL.md                          # Trigger-Beschreibung + Quick-Reference
└── reference/
    ├── logo.md                       # Wort-Bild-Marke, Geometrie, Schutzzone, Mindestgrössen, Grundversionen, Don'ts, Beizeile, Unternehmenslogos, Labels
    ├── farben-schriften-bilder.md    # Farbwerte (HEX/RGB/CMYK/RAL/PMS), Schriftvorgaben, Bildsprache-Grundsätze
    └── anwendungen.md                # Geschäftsausstattung, Dokumentvorlagen, Publikationen, digitale Medien, Beschriftungen
```

## Verwendung

**Global installieren** (Skill in jedem Projekt auf dieser Maschine automatisch verfügbar, ohne Kopieren):

```bash
./install.sh        # macOS/Linux
./install.ps1        # Windows (PowerShell)
```

Installiert/aktualisiert `~/.claude/skills/stgallen-cd`. Bei Änderungen am Skill hier im Repo einfach erneut ausführen, um die lokale Kopie zu synchronisieren.

**Projekt-lokal verwenden** (nur in einem bestimmten Projekt, z.B. für Weitergabe/Versionierung mit einem anderen Repo): `.claude/skills/stgallen-cd/` in das Zielprojekt kopieren — Claude Code lädt Skills aus `.claude/skills/` automatisch und zieht sie bei passenden Anfragen heran.

**In claude.ai (Browser) verwenden**: Skills lassen sich dort ebenfalls als eigenes Paket hochladen (Feature muss für den Plan aktiviert sein, i.d.R. Pro/Max/Team/Enterprise):

1. ZIP besorgen (`SKILL.md` liegt direkt im Wurzelverzeichnis des Archivs, nicht verschachtelt unter `.claude/skills/stgallen-cd/...`):
   - **Fertig gebaut**: [neuestes Release (`stgallen-cd.zip`)](https://github.com/brack101/stgallen-cd-skill/releases/tag/latest) — wird per GitHub Action bei jedem Push mit Änderungen am Skill automatisch neu erstellt (`.github/workflows/build-skill-zip.yml`).
   - **Selbst bauen**:
     ```bash
     cd .claude/skills/stgallen-cd
     zip -r ../../../stgallen-cd.zip .
     ```
2. Auf claude.ai unter **Einstellungen → Capabilities/Skills** das ZIP hochladen.
3. Skill im Chat aktivieren (Skill-Auswahl/Toggle) — danach greift er dort genauso wie in Claude Code.

## Quelle

Erstellt aus dem Frontify Style Guide der Stadt St.Gallen (`company-41578.frontify.com`, Bereiche „Basiselemente" und „Anwendungen"). Bild- und Logo-Dateien sowie das dort verlinkte PDF „Umgang mit Bild.pdf" sind nicht Teil dieses Skills — bei Bedarf direkt im Original-Guide nachschlagen.

Stand: 18. August 2026.
