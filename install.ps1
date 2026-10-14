# 奶蛙大笑 Codex Pet installer (Windows PowerShell)
$ErrorActionPreference = "Stop"
$PetId = "naiwa-laugh"
$RepoRaw = "https://raw.githubusercontent.com/WentaoZhu626/naiwa-codex-pet/main"
$CodexHome = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $HOME ".codex" }
$Dest = Join-Path $CodexHome "pets\$PetId"
New-Item -ItemType Directory -Force -Path $Dest | Out-Null

$Local = if ($PSScriptRoot) { Join-Path $PSScriptRoot "pets\$PetId" } else { "" }
if ($Local -and (Test-Path (Join-Path $Local "spritesheet.webp"))) {
  Copy-Item (Join-Path $Local "pet.json"), (Join-Path $Local "spritesheet.webp") -Destination $Dest -Force
} else {
  Invoke-WebRequest "$RepoRaw/pets/$PetId/pet.json" -OutFile (Join-Path $Dest "pet.json")
  Invoke-WebRequest "$RepoRaw/pets/$PetId/spritesheet.webp" -OutFile (Join-Path $Dest "spritesheet.webp")
}
Write-Host "Installed to: $Dest"
Write-Host "Open Codex -> Settings -> Appearance -> Pets and pick '奶蛙大笑'"
