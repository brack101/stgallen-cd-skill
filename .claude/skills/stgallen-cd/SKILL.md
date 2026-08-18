---
name: stgallen-cd
description: Corporate-Design-Regelwerk der Stadt St.Gallen (Logo, Farben, Schriften, Bilder, Geschäftsausstattung, Publikationen, digitale Medien, Beschriftungen). Verwenden wenn nach CD-Vorgaben der Stadt St.Gallen gefragt wird, ein Text/Design/Dokument auf CD-Konformität geprüft werden soll, oder CD-konforme Inhalte (Farbwerte, Schriftangaben, Textbausteine, Vorlagenstruktur) erstellt werden sollen. Quelle: Frontify Style Guide company-41578.frontify.com.
---

# Corporate Design Stadt St.Gallen

Dieser Skill fasst den offiziellen Frontify-Style-Guide der Stadt St.Gallen zusammen (Stand: Crawl vom 2026-08-18, "Basiselemente" zuletzt geändert Fri Sep 05 2025 / Wed Nov 26 2025, "Anwendungen" zuletzt geändert bis Wed Feb 18 2026). Bei Unsicherheit über die Aktualität einer Vorgabe: auf `https://company-41578.frontify.com/d/xD0Idv8S6VM3/` verweisen statt zu raten.

Drei Einsatzarten dieses Skills:

1. **Nachschlagen** — Fragen zu Logo, Farben, Schriften, Anwendungsformen direkt aus diesem Skill beantworten.
2. **Konsistenzprüfung** — einen gegebenen Text/Entwurf/CSS/Dokument gegen die Regeln unten abgleichen und konkrete Abweichungen benennen (z.B. falsche Hex-Farbe, falsche Schrift, Logo verändert/verzerrt, Mindestgrösse unterschritten).
3. **Erstellung** — CD-konforme Bausteine liefern (z.B. CSS-Farbvariablen, Font-Stacks, Struktur-Vorschläge für Titelseiten/Broschüren), basierend exakt auf den Werten unten — keine Werte erfinden.

Details in `reference/`:
- `reference/logo.md` — Logo-Regeln (Geometrie, Schutzzone, Mindestgrössen, Grundversionen, Don'ts, Beizeile, Unternehmenslogos, Labels)
- `reference/farben-schriften-bilder.md` — Farbwerte, Schriftvorgaben, Bildsprache-Grundsätze
- `reference/anwendungen.md` — Geschäftsausstattung, Dokumentvorlagen, Publikationen, digitale Medien, Beschriftungen

## Kernregeln (Quick Reference)

**Markenfarben:**
| Farbe | HEX | RGB | CMYK |
|---|---|---|---|
| Rot | `#E00025` | 224,0,37 | 0,90,100,0 |
| Schwarz | `#000000` | 0,0,0 | 0,0,0,100 |

Rot präsent, aber nicht aufdringlich/aggressiv einsetzen. Schwarz primär als Textfarbe/Rasterton.

**Schriften:**
| Kontext | Schrift |
|---|---|
| Office-Anwendungen (Verwaltungsauftritt) | Arial |
| Print (Marktauftritt) | Univers (Adrian Frutiger, 1957) |
| Online / Website | Linotype Univers® (Ausnahmen: Arial, mit KOM abgesprochen) |
| Logo-Typografie (nur im Logo selbst) | Taz (Lucas de Groot) — nicht als Fliesstext verwenden |

**Logo:** Fahnenband + Schriftzug «st.gallen» (ohne «Stadt»), in Rot/Schwarz. Proportionen/Farben/Geometrie sind fix — nie verzerren, drehen, umfärben oder Elemente verschieben. Drei Grundversionen: farbig, schwarz, negativ (keine Graustufen-Version). Mindestgrösse: 4 mm Höhe ohne Beizeile, 9 mm mit Beizeile.

Bei jeder Unklarheit oder Sonderfall, der hier nicht abgedeckt ist: an die Dienststelle «Kommunikation» verweisen (Standardhinweis im Original-Guide).

**Will jemand das Logo tatsächlich verwenden/herunterladen?** Dieser Skill enthält keine Logo-Dateien, nur Regeln. Ablauf siehe `reference/logo.md` → Abschnitt "Logo beziehen": Version bestimmen, Datei nur über die offizielle Frontify-Seite beziehen, Regeln (Mindestgrösse/Schutzzone/Don'ts) gegenchecken, bei Sonderfällen «Kommunikation» kontaktieren.
