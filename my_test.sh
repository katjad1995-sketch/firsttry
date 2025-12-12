
#!/bin/bash

# Скрипт: Имитация Smoke-теста для API

API_URL="https://jsonplaceholder.typicode.com/posts/1"

echo "--- 💨 Запуск Smoke-теста: Проверка основного API ---"

# Используем curl для получения HTTP-статуса
# -s: тихий режим, -o /dev/null: не сохранять тело ответа, -w: записать статус-код в переменную
STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" $API_URL)

echo "   Проверяемый эндпоинт: $API_URL"
echo "   Полученный статус: $STATUS_CODE"

# Проверка условия (статус должен быть 200)
if [ "$STATUS_CODE" -eq 200 ]; then
    echo "✅ [SUCCESS] Основной API отвечает корректно (Статус 200)."
    exit 0 # Выход с кодом успеха
else
    echo "❌ [FAIL] Основной API не работает! Требуется немедленная проверка. (Статус $STATUS_CODE)"
    exit 1 # Выход с кодом ошибки
fi
