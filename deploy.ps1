# Настройка окружения
$OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# Собираем ФИО из кодов, чтобы избежать проблем с кодировкой файла
$fio = [char]0x0422 + [char]0x0440 + [char]0x0443 + [char]0x0431 + [char]0x0020 + `
       [char]0x041c + [char]0x0438 + [char]0x0445 + [char]0x0430 + [char]0x0438 + [char]0x043b + [char]0x0020 + `
       [char]0x0414 + [char]0x043c + [char]0x0438 + [char]0x0442 + [char]0x0440 + [char]0x0438 + [char]0x0435 + [char]0x0432 + [char]0x0438 + [char]0x0447

Write-Host "--- Starting ---" -ForegroundColor Cyan

if (Test-Path "homepage.html") {
    # Читаем файл как UTF8
    $content = [System.IO.File]::ReadAllText("$(Get-Location)\homepage.html", [System.Text.Encoding]::UTF8)

    # Замена заголовка
    $replacement = "<title>$fio</title>"
    $content = $content -replace '<title>.*?</title>', $replacement
    
    # Сохраняем файл обратно в UTF8
    [System.IO.File]::WriteAllText("$(Get-Location)\homepage.html", $content, [System.Text.Encoding]::UTF8)

    # Создаем структуру
    Copy-Item "homepage.html" "index.html" -Force
    if (-not (Test-Path "homepage")) { New-Item -ItemType Directory -Name "homepage" | Out-Null }
    Copy-Item "homepage.html" "homepage/index.html" -Force
    
    Write-Host "Title and structure updated." -ForegroundColor Green
}

# --- Стандартный блок Git ---
if (-not (Test-Path ".git")) {
    git init -b main
    git remote add origin https://github.com/trubmd/trubmd.ru.git
    git fetch
    git reset --mixed origin/main
}

git add .
$status = git status --porcelain
if ($status) {
    $Date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    git commit -m "Update: $Date"
    git push origin main
} else {
    Write-Host "No changes." -ForegroundColor Gray
}

Write-Host "--- Done ---"
Start-Sleep -Seconds 2