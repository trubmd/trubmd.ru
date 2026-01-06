$OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# 1. Setup repository if .git is missing
if (-not (Test-Path ".git")) {
    Write-Host "Initial setup..." -ForegroundColor Cyan
    git init -b main
    git remote add origin https://github.com/trubmd/trubmd.ru.git
    git fetch
    git reset --mixed origin/main
}

# 2. Sync changes
git add .

# 3. Check for differences
$status = git status --porcelain
if ($status) {
    Write-Host "Changes detected. Updating..." -ForegroundColor Yellow
    $Date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    git commit -m "Update: $Date"
    
    # Push only new data
    git push origin main
    
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Push failed. Trying force push..." -ForegroundColor Red
        git push origin main --force
    }
} else {
    Write-Host "No changes to deploy." -ForegroundColor Gray
}

Write-Host "--- Done ---"
Start-Sleep -Seconds 2