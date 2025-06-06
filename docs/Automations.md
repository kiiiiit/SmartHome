# Документация по автоматизациям проекта "Умный дом"

В этом документе описаны все автоматизации, настроенные в системе Home Assistant. Они сгруппированы по файлам, в которых находятся.

---

## 1. Автоматизации для Apple-устройств (`unified_apple_devices.yaml`)

Эти автоматизации управляют климатом и режимами дома на основе данных с iPhone, Apple Watch и Apple TV.

### 1.1. Единое управление по iPhone (`iPhone - Unified Control`)

- **Описание:** Центральная автоматизация, которая реагирует на местоположение iPhone и уровень заряда батареи.
- **Триггеры:**
  - **Приход домой:** `device_tracker.iphone_user1` переходит в состояние `home`.
  - **Уход из дома:** `device_tracker.iphone_user1` находится в состоянии `not_home` в течение 15 минут.
  - **Приближение к дому:** `device_tracker.iphone_user1` входит в зону `zone.approaching_home`.
  - **Низкий заряд:** `binary_sensor.low_battery_alert` переходит в состояние `on`.
- **Действия:**
  - **Приход домой:** Активируется режим `home` (комфортная температура) и отправляется приветственное уведомление.
  - **Уход из дома:** Активируется режим `away` (экономичная температура) и отправляется уведомление об уходе.
  - **Приближение к дому:** Включается предварительный прогрев дома (комфортная температура +1°C).
  - **Низкий заряд:** Отправляется уведомление о низком заряде на устройствах Apple.

### 1.2. Климат-контроль на основе здоровья (`Apple Watch - Health Climate Control`)

- **Описание:** Управляет климатом на основе показателей здоровья с Apple Watch.
- **Триггеры:**
  - **Пользователь уснул:** `sensor.apple_watch_heart_rate` переходит в состояние `sleeping`.
  - **Высокий пульс:** `sensor.apple_watch_heart_rate` поднимается выше 100 ударов в минуту.
- **Условие:** Пользователь должен быть дома (`device_tracker.iphone_user1` в состоянии `home`).
- **Действия:**
  - **При засыпании:** Активируется ночной режим климата (`sleep`).
  - **При высоком пульсе:** Если в доме жарко (>25°C), температура немного снижается для создания более комфортных условий, и отправляется уведомление.

### 1.3. Климат на основе активности (`Apple Devices - Activity Based Climate`)

- **Описание:** Регулирует климат в зависимости от использования медиа-устройств.
- **Триггеры:**
  - **Просмотр Apple TV:** `media_player.apple_tv` переходит в состояние `playing`.
  - **Прослушивание музыки:** `media_player.mood_player` переходит в состояние `playing`.
  - **Поздняя ночь:** Наступает 02:00.
- **Условие:** Кто-то должен быть дома (`binary_sensor.anyone_home` в состоянии `on`).
- **Действия:**
  - **Просмотр Apple TV ночью (после 22:00):** Активируется ночной режим климата.
  - **Прослушивание музыки:** Температура немного повышается для большего комфорта.
  - **В 02:00, если дома никого нет:** Отправляется команда на перевод MacBook в спящий режим.

---

## 2. Автоматизации для котла (`boiler_automations.yaml`)

### 2.1. Обновление уличной температуры (`Boiler - Update Outdoor Temperature`)

- **Описание:** Ключевая автоматизация для погодозависимого управления. Она постоянно передает данные об уличной температуре с датчика `POK005` напрямую в OpenTherm-шлюз котла.
- **Триггер:** Состояние датчика `sensor.pok005_temperature` изменяется.
- **Условие:** Значение датчика корректно (не `unavailable` или `unknown`).
- **Действие:** Публикует текущее значение температуры в MQTT-топик `opentherm/sensors/outdoor_temperature`, который слушает шлюз котла.

---

## 3. Автоматизации для Zigbee-устройств (`zigbee_automations.yaml`)

Эти автоматизации отвечают за мониторинг и безопасность Zigbee-сети.

### 3.1. Оповещение о низком заряде (`Zigbee - Low Battery Alert`)

- **Описание:** Централизованно оповещает о низком уровне заряда на ВСЕХ Zigbee-устройствах.
- **Триггер:** Срабатывает `binary_sensor.low_battery_alert`, который агрегирует информацию о заряде со всех датчиков.
- **Действие:** Отправляет одно уведомление со списком всех устройств, у которых заряд упал ниже порога, установленного в `input_number.low_battery_threshold`.

### 3.2. Оповещение о недоступности устройств (`Zigbee - Device Offline Alert`)

- **Описание:** Мониторит доступность критически важных Zigbee-устройств.
- **Триггер:** Один из ключевых датчиков (`sensor.pok005_temperature`, `sensor.vvo_smart_life_temperature`, `binary_sensor.sonoff_snzb_06p_occupancy`) становится недоступен (`unavailable`) на 30 минут.
- **Действие:** Отправляет уведомление с именем недоступного устройства.

### 3.3. Оповещение об экстремальных температурах (`Zigbee - Extreme Temperature Alert POK005`)

- **Описание:** Предупреждает об опасных погодных условиях на улице.
- **Триггер:**
  - **Сильный мороз:** Уличная температура (`sensor.pok005_temperature`) опускается ниже порога, заданного в `input_number.extreme_cold_threshold`.
  - **Сильная жара:** Уличная температура поднимается выше 38°C.
- **Действие:** Отправляет уведомление о зафиксированной экстремальной температуре.
