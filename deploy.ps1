# Настройка кодировки для работы с кириллицей в Windows
$OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

Write-Host "--- Starting deployment process ---" -ForegroundColor Cyan

# 1. АВТОМАТИЗАЦИЯ: Создаем копию homepage для главной страницы
if (Test-Path "homepage.html") {
    # Копируем homepage.html в index.html. Флаг -Force перезапишет старый индекс.
    Copy-Item "homepage.html" "index.html" -Force
    Write-Host "Success: index.html updated from homepage.html" -ForegroundColor Green
} else {
    Write-Host "Warning: homepage.html not found, index.html was not updated." -ForegroundColor Yellow
}

# 2. Инициализация репозитория, если это первый запуск в новой папке
if (-not (Test-Path ".git")) {
    Write-Host "Initial git setup..." -ForegroundColor Cyan
    git init -b main
    git remote add origin https://github.com/trubmd/trubmd.ru.git
    git fetch
    git reset --mixed origin/main
}

# 3. Добавление файлов в индекс (включая свежий index.html)
git add .

# 4. Проверка изменений
$status = git status --porcelain
if ($status) {
    Write-Host "Changes detected. Committing..." -ForegroundColor Yellow
    $Date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    git commit -m "Update: $Date"
    
    # Пытаемся сделать быстрый пуш
    git push origin main
    
    # Если обычный пуш не прошел (конфликт историй), делаем принудительный
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Standard push rejected. Attempting force push..." -ForegroundColor Red
        git push origin main --force
    }
} else {
    Write-Host "No changes detected. Site is up to date." -ForegroundColor Gray
}

Write-Host "--- Deployment Complete ---"
Start-Sleep -Seconds 2