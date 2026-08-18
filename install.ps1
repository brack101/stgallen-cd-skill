# Installiert/aktualisiert den stgallen-cd Skill auf User-Ebene
# (%USERPROFILE%\.claude\skills\stgallen-cd), damit er in allen
# Projekten auf dieser Maschine automatisch verfuegbar ist.
$ErrorActionPreference = "Stop"

$Src = Join-Path $PSScriptRoot ".claude\skills\stgallen-cd"
$Dest = Join-Path $env:USERPROFILE ".claude\skills\stgallen-cd"

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
