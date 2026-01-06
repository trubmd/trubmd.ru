# Настройка кодировки (чтобы консоль не глючила)
$OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# 1. Удаляем старый мусор, если он есть
rd .git -Recurse -Force -ErrorAction SilentlyContinue

# 2. Создаем всё с нуля
git init -b main
git remote add origin https://github.com/trubmd/trubmd.ru.git

# 3. Добавляем файлы и фиксируем (коммит)
git add .
git commit -m "Update site"

# 4. Пробиваемся на GitHub
Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
git push origin main --force

# 5. Снова удаляем .git (чтобы при следующем запуске всё было чисто)
rd .git -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "--- DONE! ---"
pause