param(
    [string]$SkillsPath,
    [string]$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
)

$ErrorActionPreference = "Stop"

if (-not $SkillsPath -or $SkillsPath.Trim().Length -eq 0) {
    if ($env:CODEX_HOME -and $env:CODEX_HOME.Trim().Length -gt 0) {
        $SkillsPath = Join-Path $env:CODEX_HOME "skills"
    }
    else {
        $SkillsPath = Join-Path $HOME ".codex/skills"
    }
}

function Copy-DirectoryContents($Source, $Destination) {
    if (-not (Test-Path -LiteralPath $Source -PathType Container)) {
        throw "Missing source directory: $Source"
    }

    New-Item -ItemType Directory -Force -Path $Destination | Out-Null
    Get-ChildItem -LiteralPath $Source -Force | Where-Object { $_.Name -ne ".DS_Store" } | ForEach-Object {
        Copy-Item -LiteralPath $_.FullName -Destination $Destination -Recurse -Force
    }
}

$skillSource = Join-Path $RepoRoot "adapters/codex/skills/llm-council"
$councilSource = Join-Path $RepoRoot "council"
$skillTarget = Join-Path $SkillsPath "llm-council"
$bundledCouncilTarget = Join-Path $skillTarget "references/council"

Copy-DirectoryContents $skillSource $skillTarget
Copy-DirectoryContents $councilSource $bundledCouncilTarget

Write-Host "Installed LLM Council Codex skill into $skillTarget"
Write-Host "Bundled shared council core at $bundledCouncilTarget"
