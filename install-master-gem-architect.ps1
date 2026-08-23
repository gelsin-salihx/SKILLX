param(
    [string]$InstallRoot = (Join-Path $env:USERPROFILE '.codex\skills'),
    [switch]$Force
)

$ErrorActionPreference = 'Stop'
$source = Join-Path $PSScriptRoot 'master-gem-architect'
$target = Join-Path $InstallRoot 'master-gem-architect'

if (-not (Test-Path (Join-Path $source 'SKILL.md'))) {
    throw "Skill package not found: $source"
}

if ((Test-Path $target) -and -not $Force) {
    throw "Target already exists: $target. Re-run with -Force to replace it."
}

New-Item -ItemType Directory -Force -Path $InstallRoot | Out-Null
if (Test-Path $target) { Remove-Item -LiteralPath $target -Recurse -Force }
Copy-Item -LiteralPath $source -Destination $target -Recurse

Write-Host "Installed Master Gem Architect to $target"
Write-Host 'Restart Codex or refresh skills before using it.'

