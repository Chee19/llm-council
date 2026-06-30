param(
    [string]$Root = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
)

$ErrorActionPreference = "Stop"
$failed = $false

function Fail($Message) {
    $script:failed = $true
    Write-Error $Message -ErrorAction Continue
}

function Require-File($Path) {
    $fullPath = Join-Path $Root $Path
    if (-not (Test-Path -LiteralPath $fullPath -PathType Leaf)) {
        Fail "Missing file: $Path"
    }
}

function Require-Directory($Path) {
    $fullPath = Join-Path $Root $Path
    if (-not (Test-Path -LiteralPath $fullPath -PathType Container)) {
        Fail "Missing directory: $Path"
    }
}

$corePaths = @(
    "council",
    "docs/architecture.md"
)

foreach ($path in $corePaths) {
    $fullPath = Join-Path $Root $path
    if (-not (Test-Path -LiteralPath $fullPath)) {
        Fail "Cannot scan missing core path: $path"
        continue
    }

    if (Test-Path -LiteralPath $fullPath -PathType Container) {
        $scanFiles = Get-ChildItem -LiteralPath $fullPath -Recurse -File
    }
    else {
        $scanFiles = Get-Item -LiteralPath $fullPath
    }

    $matches = $scanFiles | Select-String -Pattern "\.claude" -ErrorAction SilentlyContinue
    foreach ($match in $matches) {
        Fail "Core file contains Claude-specific path: $($match.Path):$($match.LineNumber)"
    }
}

$requiredFiles = @(
    "README.md",
    "llm-council.config.json",
    "docs/architecture.md",
    "council/chairman.md",
    "council/protocols/decision-lifecycle.md",
    "council/protocols/intent-anchoring.md",
    "council/protocols/debate-rules.md",
    "council/protocols/judge-intervention.md",
    "council/protocols/council-sizing.md",
    "council/protocols/synthesis-rules.md",
    "council/references/architecture-overview.md",
    "adapters/claude/commands/council.md",
    "adapters/claude/agents/specialist.md",
    "adapters/claude/agents/judge.md",
    "adapters/codex/skills/llm-council/SKILL.md",
    "scripts/install.ps1",
    "scripts/install-claude.ps1",
    "scripts/install-codex.ps1",
    "scripts/validate-references.ps1"
)

foreach ($file in $requiredFiles) {
    Require-File $file
}

$requiredDirectories = @(
    "council/roles",
    "council/personas",
    "council/souls",
    "council/references/domain-playbooks"
)

foreach ($directory in $requiredDirectories) {
    Require-Directory $directory
}

$configPath = Join-Path $Root "llm-council.config.json"
try {
    $config = Get-Content -LiteralPath $configPath -Raw | ConvertFrom-Json
    if (-not $config.providers.claude.adapter) {
        Fail "Config is missing providers.claude.adapter"
    }
    if (-not $config.providers.codex.adapter) {
        Fail "Config is missing providers.codex.adapter"
    }
}
catch {
    Fail "Invalid config JSON: $($_.Exception.Message)"
}

if ($failed) {
    exit 1
}

Write-Host "Reference validation passed."
