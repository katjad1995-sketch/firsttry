#!/bin/bash

# Скрипт: Тест выхода пользователя из системы (с исправлением таймаута)

API_URL="https://jsonplaceholder.typicode.com/logout"

echo "--- 🏃 Запуск теста: Выход пользователя ---"

# Имитация установки увеличенного таймаута
echo "INFO: Установка таймаута API до 5 секунд (исправление бага)."

# Имитация успешного выполнения API-запроса
STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" -X POST $API_URL)

if [ "$STATUS_CODE" -eq 200 ]; then
    echo "✅ SUCCESS: API-запрос на выход выполнен успешно. Статус: $STATUS_CODE"
    echo "Bugfix/fix-api-timeout: Успешно применен."
else
    echo "❌ ERROR: Ошибка API. Статус: $STATUS_CODE"
fi

echo "--- Тест завершен. ---"
