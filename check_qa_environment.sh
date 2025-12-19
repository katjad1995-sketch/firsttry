
#!/bin/bash

echo "--- 📋 Отчет о готовности окружения QA ---"
echo "Дата: $(date)"
echo "Пользователь: $USER"

echo -e "\n1. Проверка инструментов:"
git --version || echo "Git не найден"
curl --version | head -n 1 || echo "Curl не найден"

echo -e "\n2. Создание структуры папок..."
mkdir -p reports/daily_checks
echo "Папка reports/daily_checks готова."

echo -e "\n3. Состояние репозитория:"
git status -s

echo -e "\n--- ✅ Проверка завершена ---"
