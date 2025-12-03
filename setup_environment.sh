
#!/bin/bash

# Скрипт для создания необходимой структуры папок, если они отсутствуют.

echo "--- 🛠️ Настройка рабочей среды (проверка папок) ---"

# 1. Создание папки для логов (./test_logs)
LOG_DIR="./test_logs"
if [ ! -d "$LOG_DIR" ]; then
    mkdir -p "$LOG_DIR"
    echo "✅ Создана папка для логов: $LOG_DIR"
else
    echo "☑️ Папка логов $LOG_DIR уже существует."
fi

# 2. Создание папки для кеша / временных файлов (./cache)
CACHE_DIR="./cache"
if [ ! -d "$CACHE_DIR" ]; then
    mkdir -p "$CACHE_DIR"
    echo "✅ Создана папка для кеша: $CACHE_DIR"
else
    echo "☑️ Папка кеша $CACHE_DIR уже существует."
fi

echo "--- Настройка завершена. ---"
