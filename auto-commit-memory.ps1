# auto-commit-memory.ps1
# Red de seguridad: auto-commit de alpha-ai-memory cada 30 minutos
# Registrado como Windows Scheduled Task

$repoPath = "C:\Users\areyes\alpha-ai-memory"

if (-not (Test-Path "$repoPath\.git")) {
    exit 0
}

# Check if there are uncommitted changes
$status = git -C $repoPath status --porcelain 2>$null
if ($status) {
    $date = Get-Date -Format "yyyy-MM-dd HH:mm"
    git -C $repoPath add . 2>$null
    git -C $repoPath commit -m "memory: auto-save $date" 2>$null
    git -C $repoPath push 2>$null
}