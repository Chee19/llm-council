param(
    [ValidateSet("claude", "codex")]
    [string]$Provider,
    [string]$TargetPath,
    [string]$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
)

$ErrorActionPreference = "Stop"

if ($Provider -eq "claude") {
    $args = @{
        RepoRoot = $RepoRoot
    }
    if ($TargetPath -and $TargetPath.Trim().Length -gt 0) {
        $args.ProjectPath = $TargetPath
    }
    & (Join-Path $PSScriptRoot "install-claude.ps1") @args
    exit $LASTEXITCODE
}

if ($Provider -eq "codex") {
    $args = @{
        RepoRoot = $RepoRoot
    }
    if ($TargetPath -and $TargetPath.Trim().Length -gt 0) {
        $args.SkillsPath = $TargetPath
    }
    & (Join-Path $PSScriptRoot "install-codex.ps1") @args
    exit $LASTEXITCODE
}

throw "Provider is required. Use -Provider claude or -Provider codex."
