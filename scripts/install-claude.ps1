param(
    [string]$ProjectPath = (Get-Location).Path,
    [string]$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
)

$ErrorActionPreference = "Stop"

function Copy-DirectoryContents($Source, $Destination) {
    if (-not (Test-Path -LiteralPath $Source -PathType Container)) {
        throw "Missing source directory: $Source"
    }

    New-Item -ItemType Directory -Force -Path $Destination | Out-Null
    Get-ChildItem -LiteralPath $Source -Force | Where-Object { $_.Name -ne ".DS_Store" } | ForEach-Object {
        Copy-Item -LiteralPath $_.FullName -Destination $Destination -Recurse -Force
    }
}

$claudeRoot = Join-Path $ProjectPath ".claude"
$commandsTarget = Join-Path $claudeRoot "commands"
$agentsTarget = Join-Path $claudeRoot "agents"
$councilTarget = Join-Path $claudeRoot "council"

$commandsSource = Join-Path $RepoRoot "adapters/claude/commands"
$agentsSource = Join-Path $RepoRoot "adapters/claude/agents"
$councilSource = Join-Path $RepoRoot "council"

Copy-DirectoryContents $commandsSource $commandsTarget
Copy-DirectoryContents $agentsSource $agentsTarget
Copy-DirectoryContents $councilSource $councilTarget

Write-Host "Installed LLM Council Claude adapter into $claudeRoot"
Write-Host "Use: /council <decision or problem>"
