param(
    [string]$InstallRoot = (Join-Path $env:USERPROFILE '.codex\skills'),
    [switch]$Force
)

$ErrorActionPreference = 'Stop'
$repoZip = 'https://github.com/gelsin-salihx/SKILLX/archive/refs/heads/main.zip'
$tempRoot = Join-Path ([System.IO.Path]::GetTempPath()) ('master-gem-architect-' + [guid]::NewGuid().ToString('N'))
$zipPath = Join-Path $tempRoot 'skillx.zip'
$target = Join-Path $InstallRoot 'master-gem-architect'

try {
    New-Item -ItemType Directory -Force -Path $tempRoot | Out-Null
    Invoke-WebRequest -Uri $repoZip -OutFile $zipPath
    Expand-Archive -LiteralPath $zipPath -DestinationPath $tempRoot -Force

    $source = Join-Path $tempRoot 'SKILLX-main\master-gem-architect'
    if (-not (Test-Path (Join-Path $source 'SKILL.md'))) {
        throw 'The downloaded repository does not contain master-gem-architect\SKILL.md.'
    }
    if ((Test-Path $target) -and -not $Force) {
        throw "Target already exists: $target. Re-run with -Force to replace it."
    }

    New-Item -ItemType Directory -Force -Path $InstallRoot | Out-Null
    if (Test-Path $target) { Remove-Item -LiteralPath $target -Recurse -Force }
    Copy-Item -LiteralPath $source -Destination $target -Recurse
    Write-Host "Installed Master Gem Architect to $target"
    Write-Host 'Restart Codex or refresh skills before using it.'
}
finally {
    if (Test-Path $tempRoot) { Remove-Item -LiteralPath $tempRoot -Recurse -Force }
}

