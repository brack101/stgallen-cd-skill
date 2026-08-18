#!/usr/bin/env pwsh
# Installiert/aktualisiert den stgallen-cd Skill auf User-Ebene
# (~/.claude/skills/stgallen-cd), damit er in allen Projekten
# auf dieser Maschine automatisch verfuegbar ist.
$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$Src = Join-Path $ScriptDir ".claude/skills/stgallen-cd"
$Dest = Join-Path $HOME ".claude/skills/stgallen-cd"

if (-not (Test-Path $Src)) {
    Write-Error "Quelle nicht gefunden: $Src"
    exit 1
}

$DestParent = Split-Path -Parent $Dest
New-Item -ItemType Directory -Force -Path $DestParent | Out-Null

if (Test-Path $Dest) {
    Remove-Item -Recurse -Force $Dest
}

Copy-Item -Recurse -Path $Src -Destination $Dest

Write-Host "Skill installiert: $Dest"
