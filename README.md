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

Repo in ein Projekt klonen bzw. `.claude/skills/stgallen-cd/` dorthin kopieren — Claude Code lädt Skills aus `.claude/skills/` automatisch und zieht sie bei passenden Anfragen heran.

## Quelle

Erstellt aus dem Frontify Style Guide der Stadt St.Gallen (`company-41578.frontify.com`, Bereiche „Basiselemente" und „Anwendungen"). Bild- und Logo-Dateien sowie das dort verlinkte PDF „Umgang mit Bild.pdf" sind nicht Teil dieses Skills — bei Bedarf direkt im Original-Guide nachschlagen.

Stand: 18. August 2026.
