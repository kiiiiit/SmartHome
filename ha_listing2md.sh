#!/bin/bash
# Скрипт для создания полного листинга всех YAML-файлов конфигурации Home Assistant.

# Имя выходного файла будет содержать текущую дату и время для уникальности
OUTPUT_FILE="fullConfigListingOfHomeAssistant_$(date +'%Y%m%d_%H%M%S').md"

# Директория с конфигурацией
CONFIG_DIR="./config"

# Оповещение о начале работы
echo "🚀 Создание полного листинга конфигурации..."

# Удаляем старый файл, если он существует, чтобы избежать накопления
find . -name "fullConfigListingOfHomeAssistant_*.md" -delete

# Начинаем запись в новый файл
echo "# Полный листинг конфигурации Home Assistant" > "$OUTPUT_FILE"
echo "Сгенерировано: $(date)" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Находим все .yaml файлы в директории config, сортируем их для предсказуемого порядка,
# и добавляем содержимое каждого файла в итоговый документ.
find "$CONFIG_DIR" -name "*.yaml" | sort | while read -r filepath; do
  echo "   -> Добавляется файл: $filepath"
  echo "" >> "$OUTPUT_FILE"
  echo "---" >> "$OUTPUT_FILE"
  echo "" >> "$OUTPUT_FILE"
  # Добавляем заголовок с путем к файлу
  echo "## \`$filepath\`" >> "$OUTPUT_FILE"
  echo "" >> "$OUTPUT_FILE"
  # Добавляем содержимое файла в блок кода YAML
  echo '```yaml' >> "$OUTPUT_FILE"
  cat "$filepath" >> "$OUTPUT_FILE"
  echo "" >> "$OUTPUT_FILE" # Добавляем пустую строку в конце для чистоты
  echo '```' >> "$OUTPUT_FILE"
  echo "" >> "$OUTPUT_FILE"
done

echo "✅ Готово! Листинг успешно создан: $OUTPUT_FILE" 