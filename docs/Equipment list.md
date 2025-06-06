## Расширенный файл-инвентаризации устройств умного дома

### 1. **Raspberry Pi 3 Model B** (Центр управления)

**Основные характеристики:**

- **Модель:** Raspberry Pi 3 Model B
- **Процессор:** Broadcom BCM2837 ARM Cortex-A53 Quad Core 1.2GHz (64-bit)
- **Оперативная память:** 1GB RAM
- **Беспроводная связь:** 802.11 bgn Wireless LAN, Bluetooth 4.1 (Bluetooth Classic и LE)
- **Порты:** 4× USB 2.0, HDMI, 3.5mm аудио, Ethernet 10/100, GPIO 40-pin
- **Питание:** 5V 2.5A через micro-USB
- **Операционная система:** Home Assistant OS
- **Назначение:** Центральный хаб умного дома

**Технические детали:**

- **Чипсет:** Broadcom BCM2387
- **Архитектура:** ARMv8-A
- **Максимальная производительность:** В 10 раз быстрее первого поколения Pi
- **Поддержка видео:** Full HD 1080p
- **Камера/дисплей:** CSI camera port, DSI display port
- **Хранение данных:** microSD карта (рекомендуется 64GB A2)

**Интеграции и функции:**

- **Home Assistant:** Версия Core 2024.2.0+
- **Поддерживаемые протоколы:** Zigbee (через донгл), Wi-Fi, Bluetooth, MQTT, HTTP API
- **Дополнения:** ZHA (Zigbee Home Automation), Mosquitto broker, ESPHome, File editor
- **Apple Home:** Интеграция через HomeKit Bridge

---

### 2. **BAXI LUNA-3 Comfort 240 i** (Газовый котел)

**Основные характеристики:**

- **Модель:** BAXI LUNA-3 Comfort 240 i
- **Тип:** Настенный газовый двухконтурный котел
- **Мощность:** 24 кВт (отопление), 24 кВт (ГВС)
- **КПД:** 91.2% (по данным производителя), 92.9% (по спецификации)
- **Камера сгорания:** Открытая (забор воздуха из помещения)
- **Площадь обогрева:** До 240 м²
- **Страна производства:** Италия

**Технические характеристики:**

- **Теплообменник:** Медный
- **Корпус:** Сталь, белый цвет
- **Расход газа:** 1-2.78 м³/ч (природный), 1-2.07 кг/ч (сжиженный)
- **Давление газа:** 13-20 мбар (номинальное), 20 мбар (минимальное)
- **Электропитание:** 230В, потребление 26.3 кВт
- **Управление:** Электронное с цифровым дисплеем

**Подключения и размеры:**

- **Отопление:** 3/4" (подача/обратка)
- **Газ:** 3/4" наружная резьба
- **Дымоход:** Ø120 мм
- **Габариты:** 76.3×45×34.5 см
- **Вес:** 36 кг

**Функции безопасности:**

- **Защита от перегрева, замерзания, включения без воды**
- **Контроль пламени и тяги дымохода**
- **Система самодиагностики**
- **Предохранительный клапан давления**

**OpenTherm совместимость:**

- **Протокол:** OpenTherm v2.2
- **Управление:** Модуляция мощности, контроль температур, диагностика
- **Ограничение:** Только одно устройство управления одновременно

---

### 3. **OpenTherm 2.2 ESP32-C6 DIN Термостат**

**Основные характеристики:**

- **Процессор:** ESP32-C6 4MB (RISC-V 32-bit до 160MHz + LP RISC-V до 20MHz)
- **Беспроводная связь:** Wi-Fi 6 (802.11ax), Zigbee 3.0, Bluetooth 5 LE, Thread
- **Питание:** 220В встроенное
- **Корпус:** DIN-рейка (90×50×55 мм)
- **Рабочая температура:** -30°C до +55°C
- **Прошивка:** live-control v.468

**Функциональность:**

- **Режимы работы:** Ручной, календарный, погодозависимый
- **OpenTherm v2.2:** Полная поддержка протокола
- **Датчики:** DS18B20, BME280, DHT22, ACS712, MHZ19, NTC, аналоговые входы
- **Дополнительные возможности:** Счетчик протока воды, датчик давления
- **Альтернативные прошивки:** OTGateway, ESPHome, Tasmota

**Интеграция с Home Assistant:**

- **Протоколы:** MQTT, HTTP API
- **Автоматизации:** ПИД-регулирование, эквитермическое управление
- **Диагностика:** Статус горелки, модуляция, температуры, давление, ошибки

**Совместимость с котлами:**

- **BAXI:** ✅ Полная поддержка
- **Другие:** Bosch, Buderus, Viessmann, Beretta, Ferroli, Immergas, Navien и 35+ производителей

---

### 4. **SONOFF Zigbee 3.0 USB Dongle Plus-E**

**Основные характеристики:**

- **Чип:** EFR32MG21 (Silicon Labs)
- **Протокол:** Zigbee 3.0 (IEEE 802.15.4)
- **Мощность передачи:** +20dBm
- **Корпус:** Алюминиевый (снижает помехи)
- **Прошивка:** Coordinator firmware на базе EZNet 6.10.3
- **Антенна:** Внешняя, съемная

**Технические возможности:**

- **Максимум устройств:** 32 прямых подключения, без ограничений через роутеры
- **Дальность:** До 30м в помещении
- **Совместимость:** Home Assistant (ZHA), openHAB
- **Дополнительно:** Можно прошить как Zigbee роутер

**Поддерживаемые устройства SONOFF:**

- **Роутеры:** ZBMINI, S40 Lite ZB, S31 Lite ZB, S26R2ZB
- **Конечные устройства:** ZBMINI-L, SNZB-01/02/03/04
- **Совместимость:** Универсальная с Zigbee 3.0 устройствами

**Установка драйверов:**

- **Windows 10+:** Автоматическая установка
- **Старые версии:** CP210x или CH343SER драйверы
- **USB кабель-удлинитель:** 1.5м опционально для лучшего сигнала

---

### 5. **SONOFF SNZB-06P** (Датчик присутствия)

**Основные характеристики:**

- **Технология:** 5.8GHz микроволновый радар
- **Тип обнаружения:** Движение + неподвижный человек
- **MCU:** EFR32MG22
- **Питание:** 5V 1A через USB Type-C
- **Протокол:** Zigbee 3.0 (IEEE 802.15.4)

**Функциональность:**

- **Датчик освещенности:** Встроенный (автоматическое включение только в темноте)
- **Дальность связи:** До 30м в помещении
- **Персонализация:** Настраиваемые задержки (например, 5 минут после ухода)
- **Локальные сцены:** Работа без интернета через Zigbee

**Технические характеристики:**

- **Размеры:** 44.2×44.2×59 мм
- **Вес:** 31г
- **Материал:** PC+ABS, белый цвет
- **Рабочая температура:** -10°C до +60°C
- **Влажность:** 0-90% RH (без конденсата)
- **Высота установки:** Не более 2м

**Установка и сопряжение:**

- **Режим сопряжения:** 180 секунд (удержание кнопки 5 сек)
- **Индикация:** Красный LED с различными режимами мигания
- **Монтаж:** Магнитное основание, несколько вариантов крепления

---

### 6. **SONOFF SNZB-02D** (Датчик температуры/влажности)

**Основные характеристики:**

- **Сенсор:** Швейцарского производства (высокая точность)
- **Дисплей:** LCD с отображением температуры/влажности
- **Протокол:** Zigbee 3.0
- **Питание:** CR2450 батарейка
- **Дальность:** До 120м/400ft (без препятствий)

**Функциональность:**

- **Точность измерения:** Профессиональные швейцарские сенсоры
- **Хранение данных:** До 6 месяцев в облаке, почасовые данные
- **Экспорт данных:** Возможность экспорта в файлы
- **Уведомления:** Push-уведомления при превышении пороговых значений

**Дисплей и управление:**

- **Переключение единиц:** Двойной клик (°C/°F)
- **Показатели:** Текущие, максимальные, минимальные значения
- **Монтаж:** 3 варианта установки (подставка, настенное крепление, магниты)

**Интеграция:**

- **Home Assistant:** Через ZHA
- **Голосовые помощники:** Alexa, Google Home
- **Автоматизации:** Управление увлажнителями, кондиционерами, отоплением

---

### 7. **SONOFF CAM Slim Gen2** (Wi-Fi камера)

**Основные характеристики:**

- **Разрешение:** 1920×1080 Full HD (2 мегапикселя)
- **Объектив:** 3.8мм, F2.0
- **Сжатие видео:** H.264
- **Wi-Fi:** IEEE 802.11 b/g/n 2.4GHz
- **Питание:** 5V 1A через USB Type-C

**Функциональность:**

- **ИИ-обнаружение:** Распознавание людей, настраиваемые зоны обнаружения
- **Приватность:** Настраиваемые зоны приватности, режим сна по расписанию
- **Двусторонняя связь:** Встроенные микрофон и динамик
- **Ночное видение:** Улучшенное качество при слабом освещении

**Хранение данных:**

- **Локальное:** microSD до 128GB
- **Облачное:** Camera Plan (30 дней бесплатно, затем платно)
- **Режимы записи:** Непрерывная, по движению, по расписанию

**Размеры и установка:**

- **Габариты:** 48×48×86 мм
- **Материал:** PC+ABS, белый
- **Температура:** -10°C до +40°C
- **Монтаж:** Поворотное основание, настенное/настольное крепление

**Интеграция с Home Assistant:**

- **Протокол:** RTSP (ONVIF не поддерживается)
- **Настройка:** Через веб-интерфейс eWeLink
- **Автоматизации:** Интеграция с другими SONOFF устройствами

---

### **8. POK005 ZigBee 2** (Внешний датчик температуры/влажности)

**Основные характеристики:**

- **Производитель:** PushOk Hardware (Россия)
- **Модель:** POK005
- **Тип:** Уличный датчик температуры и влажности ZigBee 3.0
- **Назначение:** Работа на улице, в неотапливаемых помещениях
- **Питание:** Батарейка CR2032 (1 год работы)
- **Диапазон температур:** -40°C до +60°C
- **Влагозащита:** Защищен от осадков

**Технические характеристики:**

- **Частота измерений:** Каждые 15 секунд (внутренняя)
- **Частота отправки:** Каждые 12 минут или при изменении температуры >0.5°C, влажности >5%
- **Потребление:** ~10 μAh (обеспечивает год работы от CR2032)
- **Точность температуры:** ±0.5°C
- **Точность влажности:** ±5%
- **Усреднение данных:** Скользящее среднее с окном 10 измерений (150 сек)

**Функциональность:**

- **Индикация связи:** Светодиод показывает качество соединения (3 мигания = хорошая связь)
- **Принудительное измерение:** Нажатие кнопки отправляет данные немедленно
- **Режим хранения:** Для экономии батареи при длительном неиспользовании
- **OTA обновления:** Поддержка обновления прошивки по воздуху

**Совместимость:**

- **Яндекс Алиса:** Хаб, Миди, Макс
- **Tuya/Smart Life:** Полная поддержка
- **Home Assistant:** Через ZHA
- **ioBroker:** С конвертером

**Монтаж и установка:**

- **Крепление:** Подвешивание за кольцо в верхней части
- **Комплектация:** Датчик, крючок с двусторонним скотчем, инструкция
- **Установка:** Вертикально, кольцом вверх, избегать прямых солнечных лучей
- **Морозостойкость:** При работе ниже -20°C рекомендуется батарея Bonrex CR2032L

**Особенности:**

- **Солнцезащитный экран:** Миниатюрный экран защищает сенсор от прямых лучей
- **Диагностика:** Встроенная индикация качества связи и уровня сигнала
- **Mesh-сеть:** Автоматическое переподключение к ближайшему ретранслятору

---

### **9. VVO ZigBee Smart Life 3** (Внутренний датчик температуры/влажности)

**Основные характеристики:**

- **Тип:** Внутренний датчик температуры и влажности ZigBee 3.0
- **Экосистема:** Tuya/Smart Life совместимый
- **Форм-фактор:** Круглый компактный корпус
- **Питание:** Батарейка CR2450 (6-12 месяцев работы)
- **Назначение:** Комнатные условия, контроль микроклимата

**Технические характеристики:**

- **Диапазон температур:** -10°C до +50°C
- **Диапазон влажности:** 0-100% RH
- **Точность температуры:** ±0.5°C
- **Точность влажности:** ±3%
- **Частота измерений:** Каждые 5-15 минут
- **Размеры:** 40×40×13 мм (приблизительно)

**Функциональность:**

- **Автоматизации:** Интеграция в сценарии Smart Life/Tuya
- **Уведомления:** Push-уведомления при превышении пороговых значений
- **Статистика:** Построение графиков температуры и влажности
- **Низкий заряд:** Автоматическое уведомление о разряде батареи
- **Принудительное обновление:** Кнопка сброса для немедленной отправки данных

**Совместимость:**

- **Smart Life/Tuya Smart:** Основная экосистема
- **Яндекс Алиса:** Через Zigbee шлюз в Станциях
- **Google Home/Alexa:** Через интеграцию Tuya
- **Home Assistant:** Через официальную интеграцию Tuya или ZHA
- **Zigbee2MQTT:** Поддержка универсальных Tuya датчиков

**Установка и настройка:**

- **Требования:** Zigbee 3.0 шлюз (Tuya, универсальный или встроенный в Яндекс Станцию)
- **Сопряжение:** Через приложение Smart Life → Добавить устройство → Датчик (Zigbee)
- **Крепление:** Двусторонний скотч или магнитное крепление
- **Сброс:** Кнопка reset (удержание 5 сек, мигание светодиода)

**Автоматизации:**

- **Климат-контроль:** Управление увлажнителями, кондиционерами, обогревателями
- **Сценарии:** "Влажность <40% → включить увлажнитель"
- **Расписания:** Контроль микроклимата по времени суток
- **Геолокация:** Управление при уходе/возвращении домой

---

### 10. **Smart Life/Tuya Экосистема**

**Основные возможности:**

- **Универсальная совместимость:** Все устройства с Tuya модулями работают в единой экосистеме
- **Приложения:** Tuya Smart, Smart Life (взаимозаменяемые)
- **Протоколы:** Wi-Fi, Zigbee 3.0, Bluetooth
- **Интеграция с HA:** Официальная интеграция Tuya + LocalTuya

**Преимущества системы:**

- **Открытая экосистема:** Поддержка множества производителей
- **Голосовые помощники:** Alexa, Google Home, Алиса
- **Автоматизации:** Сценарии в приложении + Home Assistant
- **Ценовая доступность:** Дешевле закрытых экосистем

---

### 11. **Apple Devices**

- MacBook Air
- iPhones (few)
- Watches (few)
- AirPods (few)
- Airport Extreme (router)

---

# Источники

[1] NEW Raspberry Pi 3 Model B+ - Home Assistant Community https://community.home-assistant.io/t/new-raspberry-pi-3-model-b/46879
[2] Raspberry Pi 3 Model B | The Pi Hut https://thepihut.com/products/raspberry-pi-3-model-b
[3] Setup Home Assistant on Raspberry Pi 3 - Hutscape https://hutscape.com/tutorials/setup-home-assistant-rpi
[4] Характеристики Котел газовый Baxi LUNA3 COMFORT 1.240Fi https://www.rusklimat.ru/product-kotel_gazovyy_baxi_luna3_comfort_1_240fi/specification/
[5] Совместимость WBE2-I-OPENTHERM и котла Baxi https://support.wirenboard.com/t/sovmestimost-wbe2-i-opentherm-i-kotla-baxi/26950
[6] Котел газовый BAXI Luna-3 Comfort 240 i https://ru-baxi.com/kotel-gazovyj-nastennyj-baxi-luna-3-comfort-240-i
[7] ESP32-C6 Wi-Fi 6 & BLE 5 & Thread/Zigbee SoC | Espressif Systems https://www.espressif.com/en/products/socs/esp32-c6
[8] OTGateway is a powerful open-source solution for ... - GitHub https://github.com/Laxilef/OTGateway
[9] OpenTherm thermostat with ESPHome and Home Assistant https://olegtarasov.me/opentherm-thermostat-esphome/
[10] Zigbee 3.0 USB Dongle Plus | ZBDongle-E - SONOFF Official https://sonoff.tech/product/gateway-and-sensors/sonoff-zigbee-3-0-usb-dongle-plus-e/
[11] SONOFF Zigbe 3.0 USB Dongle E ZB USB Interface Capture With ... https://www.sonoff.in/shop/6920075777659-sonoff-zigbe-3-0-usb-dongle-e-zb-usb-interface-capture-with-antenna-gateway-analyzer-base-on-ti-cc2652p-cp2102n-995
[12] HOW I Connect Sonoff Zigbee 3.0 USB Dongle Plus To Home ... https://rutube.ru/video/c65694817483d56d634e72198c428d09/
[13] Zigbee Human Presence Sensor | SNZB-06P - SONOFF Official https://sonoff.tech/product/gateway-and-sensors/snzb-06p/
[14] Sonoff SNZB-06P ZigBee 3.0 Датчик присутствия человека ... https://ru.microless.com/product/sonoff-snzb-06p-zigbee-3-0-human-presence-sensor-motion-detector-5-8ghz-microwave-radar-motion-sensor-required-zigbee-hub-compatible-with-alexa-google-home-home-assistant-snzb-06p/
[15] SONOFF SNZB-06P Zigbee Human Presence Sensor User Manual https://manuals.plus/sonoff/snzb-06p-zigbee-human-presence-sensor-manual
[16] Zigbee LCD Smart Temperature Humidity Sensor | SNZB-02D - Sonoff https://sonoff.tech/product/gateway-and-sensors/snzb-2d/
[17] SONOFF Zigbee Devices Work with Home Assistant - Itead https://itead.cc/sonoff-zigbee-devices-work-with-home-assistant/
[18] SONOFF SNZB-02D control via MQTT - Zigbee2MQTT https://www.zigbee2mqtt.io/devices/SNZB-02D.html
[19] Купить IP-Камера Sonoff CAM-S2 Slim GEN2 Wi-Fi https://www.sonoff.ru/product/ip-kamera-sonoff-cam-slim-wi-fi-smart-security-camera-adapter-2
[20] SONOFF CAM Slim Gen2 Review - A tiny indoor security camera ... https://www.cnx-software.com/2024/12/04/sonoff-cam-slim-gen2-review-tiny-indoor-security-camera-ewelink-home-assistant/
[21] SONOFF CAM-S2 WiFi Smart Security Camera User Manual https://manuals.plus/sonoff/cam-s2-wifi-smart-security-camera-manual
[22] Some device features are unavailable (only 1 of 2 endpoints exposed) https://github.com/Koenkk/zigbee2mqtt/issues/26559
[23] Review of the popular Tuya Zigbee WiFi smart home ... - YouTube https://www.youtube.com/watch?v=YxAfUF5GLt0
[24] Zigbee Home Automation - Home Assistant https://www.home-assistant.io/integrations/zha/
[25] Реле мини Zigbee 3.0 16А Tuya / Smartlife - Bitok.shop https://bitok.shop/rele-mini-zigbee-3-0-aubess-16a-tuya-smartlife/
[26] Can I configure a Zigbee device at HA and Smartlife app at same time https://community.home-assistant.io/t/can-i-configure-a-zigbee-device-at-ha-and-smartlife-app-at-same-time/463836
[27] How to Connect Zigbee Sensor to Smart Life App https://smart-life-app.com/how-to-connect-zigbee-sensor-to-smart-life-app/
[28] What is Tuya? - smart-life-app.com https://smart-life-app.com/what-is-tuya/
[29] Set Up Tuya Integration (Stable) in Home Assistant-Tuya Developer ... https://developer.tuya.com/en/docs/iot/Home-assistant-tuya-intergration?id=Kb0eqjig0utdd
[30] Tuya - Home Assistant https://www.home-assistant.io/integrations/tuya/
[31] Exploring the Uses of Wifi in Smart Homes - ACT Fibernet https://www.actcorp.in/blog/exploring-uses-wifi-smart-homes
[32] ESPHome - Smart Home Made Simple — ESPHome https://esphome.io/index.html
[33] How to Set Up a Smart Home with Matter – Step by Step https://matter-smarthome.de/en/practice/how-to-set-up-a-smart-home-with-matter-step-by-step/
[34] Install Home Assistant on Raspberry Pi 3B+ : 23 Steps - Instructables https://www.instructables.com/Install-Home-Assistant-on-Raspberry-Pi-3B/
[35] Raspberry Pi 3 Model B - Génération Robots https://www.generationrobots.com/en/402366-raspberry-pi-3-model-b.html
[36] Настенный газовый котел BAXI LUNA-3 Comfort 1.240 i https://www.termo-nn.ru/goods/253973786-nastenny_gazovy_kotel_baxi_luna_3_comfort_1_240_i
[37] OpenTherm и Luna 3 comfort 1.240 FI - Форум BAXI https://forum.baxi.ru/viewtopic.php?t=3751
[38] Котёл газовый Baxi LUNA 3 Comfort 240 i - двухконтурный https://www.nasoshop.ru/product/gazovyy-kotel-baxi-luna-3-comfort-240-i
[39] Скидка!Термостат OpenTherm 2.2 на чипе ESP 32 C6 (Wi-Fi ... https://kupi-eto.com/good/view/termostat-opentherm-2-2-na-chipe-esp-32-c6-wi-fi-zigbee-korpus-na-din-reyku-dlya-podklyucheniya-po-cifrovoy-shine-k-kotlam-otopleniya-opentherm-1058
[40] Opensource Opentherm контроллер/термостат - Форум BAXI https://forum.baxi.ru/viewtopic.php?t=9256
[41] ESP32-C6 as Zigbee coordinator/end-devicefor Home Assistant https://www.reddit.com/r/esp32/comments/1d83e98/esp32c6_as_zigbee_coordinatorenddevicefor_home/
[42] Zigbee 3.0 USB Dongle Plus | ZBDongle-E | ITEAD STUDIO OFFICIAL https://itead.cc/product/zigbee-3-0-usb-dongle/
[43] SONOFF Zigbee 3.0 USB Dongle Plus-E купить в Минске оптом и в ... https://sonoff.trade/sonoff_zigbee_30_usb_dongle_plus_e/
[44] HOW I Connect Sonoff Zigbee 3.0 USB Dongle Plus To ... - YouTube https://www.youtube.com/watch?v=DynzcuwaY7s
[45] SONOFF Zigbee Human Presence Sensor | SNZB-06P - Itead https://itead.cc/product/sonoff-zigbee-human-presence-sensor/
[46] Sonoff Zigbee Presence Sensor SNZB-06P - Is It WORTH ... - YouTube https://www.youtube.com/watch?v=Ee_-z15qAyw
[47] SONOFF SNZB-06P control via MQTT | Zigbee2MQTT https://www.zigbee2mqtt.io/devices/SNZB-06P.html
[48] SONOFF SNZB-02D Zigbee LCD Smart Temperature Humidity Sensor https://itead.cc/product/sonoff-snzb-02d-zigbee-lcd-smart-temperature-humidity-sensor/
[49] Sonoff Zigbee Temperature & Humidity Sensor Review SNZB-02D ... https://www.youtube.com/watch?v=T7K48VgE3RI
[50] SONOFF CAM Slim Gen2 Smart Home Security Camera - Itead https://itead.cc/product/sonoff-cam-slim-gen2-smart-home-security-camera/
[51] Sonoff Cam Slim 2 WiFi Smart Security Camera - Scargill's Tech Blog https://tech.scargill.net/sonoff-cam-slim-2-wifi-smart-security-camera/
[52] zigbee-herdsman-converters - Yarn 1 https://classic.yarnpkg.com/en/package/zigbee-herdsman-converters
[53] Device support - homebridge-z2m https://z2m.dev/devices/
[54] (HA - Zigbee Integration) Setup Zi-Stick on Home Assistant https://aeotec.freshdesk.com/support/solutions/articles/6000261821--ha-zigbee-integration-setup-zi-stick-on-home-assistant
[55] SmartLife Wall Switch | Zigbee 3.0 | Android™ / IOS | Plastic | White https://nedis.com/en-us/product/550774462/smartlife-wall-switch-zigbee-30-wall-mount-android-ios-plastic-white
[56] Zigbee 3.0 Coordinator + Tuya ZB 3.0 devices https://community.home-assistant.io/t/zigbee-3-0-coordinator-tuya-zb-3-0-devices/437146
[57] Инструкция умный беспроводной шлюз ZigBee MINI - GIMART https://gimart.ru/instrukcziya-umnyj-besprovodnoj-shlyuz-zigbee-mini/
[58] Smart Home Solution https://www.tuya.com/solution/scene/smart-home
[59] How to Install Smart Life Integration (Beta) - Tuya Developer https://developer.tuya.com/en/docs/iot/Smart_Life_Integration?id=Kd0gk9baikbb7
[60] How to Connect and Set up Smart Devices - Greenhse Technologies https://greenhse.com/blog/post/connecting-and-set-up-of-smart-devices
[61] The Role of WiFi in Enabling Smart Homes - ACT Fibernet https://www.actcorp.in/blog/wifi-in-enabling-smart-homes
[62] Home Assistant: Take Control of Your Smart Home (and Your Privacy!) https://www.youtube.com/watch?v=q2sBHfUmHBY
[63] Recommendations for Wi-Fi setup for IoT Smart Home devices https://www.tp-link.com/nordic/support/faq/4377/
[64] Raspberry pi 3 Model B + Home assistant : r/homeassistant - Reddit https://www.reddit.com/r/homeassistant/comments/1aepnck/raspberry_pi_3_model_b_home_assistant/
[65] Sonoff ZBDongle-E USB (Zigbee) https://sonoffafrica.co.za/product/sonoff-usb-dongle-plus-e-zigbee/
[66] Sonoff SNZB-06P ZigBee Human Presence Sensor | I lager - Proshop https://www.proshop.se/Smarta-Hem/Sonoff-SNZB-06P-ZigBee-Human-Presence-Sensor/3272042
[67] Sonoff Temp & Humidity Display Sensor (Zigbee) https://sonoffafrica.co.za/product/sonoff-temperature-humidity-display-sensor-zigbee/
[68] SONOFF CAM Slim Gen2 Wi-Fi Smart Security Camera - Opencircuit https://opencircuit.shop/product/sonoff-cam-slim-gen2-wi-fi-smart-security
[69] ZigBee 3.0 and Bluetooth Gateway. Smart Life and Tuya App. https://led-atomant.com/en/zigbee/484-zigbee-30-and-bluetooth-gateway-smart-life-and-tuya-app-compatible.html
[70] Tuya Smart vs. Smart Life: Key Differences Explained - Besen LED https://besenledlight.com/tuya-smart-vs-smart-life/
[71] How to install Home Assistant on a Raspberry PI 3 - YouTube https://www.youtube.com/watch?v=Th1SI_S9AQY
[72] SONOFF ZigBee 3.0 USB Dongle Plus USB stick (ZBDONGLE-E), [p https://www.smarterhomeshop.eu/SONOFF-ZigBee-3-0-USB-Dongle-Plus-USB-stick-ZBDONG
[73] SONOFF Zigbee Human Presence Sensor SNZB-06P - Untamed Tech https://untamedtech.co.za/product/sonoff-zigbee-human-presence-sensor-snzb-06p/
[74] SONOFF SNZB-02D ZigBee Temperature and Humidity Display https://www.hellasdigital.gr/smartliving/sonoff/sonoff-snzb-02d-zigbee-temperature-and-humidity-display/?sl=en
[75] Sonoff Cam Slim Gen2: Good, Affordable and Smart https://automatismosmundo.com/en/sonoff-cam-slim-gen2-good-affordable-and-smart/
[76] Tuya Ecosystem Devices | ImmerVib https://www.immervib.com/shop/category/tuya-ecosystem-devices-6
[77] Raspberry Pi 3: Specs, benchmarks & testing https://magazine.raspberrypi.com/articles/raspberry-pi-3-specs-benchmarks
[78] Sonoff SNZB-02D Zigbee LCD Smart Temperature Humidity Sensor ... https://manuals.plus/sonoff/snzb-02d-zigbee-lcd-smart-temperature-humidity-sensor-manual
[79] Raspberry Pi - Home Assistant https://www.home-assistant.io/installation/raspberrypi/
[80] The Raspberry Pi 3 model B 1GB is just not enough to run Home ... https://community.home-assistant.io/t/the-raspberry-pi-3-model-b-1gb-is-just-not-enough-to-run-home-assistant-anymore/818562
[81] Котел газовый настенный BAXI LUNA-3 Comfort 1.240 i ... https://shop.baxi.ru/products/luna-3-comfort-1-240-i
[82] Котел газовый настенный Baxi Luna-3 Comfort 240i https://www.xn----8sbnnjgeensuk.xn--p1ai/goods/41139318-kotel_gazovy_nastenny_baxi_luna_3_comfort_240i
[83] Газовый настенный котел Baxi LUNA 3 comfort 240 i ... https://www.teremonline.ru/product/gazovyy-nastennyy-kotel-baxi-luna-3-comfort-240-i-dvukhkonturnyy-atmosfernyy/
[84] Настенный газовый котел BAXI LUNA 3 Comfort 240 i ... https://www.proteplo-spb.ru/product/baxi-luna-3-comfort-240-i-nastennyi-gazovyi-kotel
[85] Характеристики Термостат OpenTherm 2.2 на чипе ESP 32 C6 ... https://www.ozon.ru/product/termostat-opentherm-2-2-na-chipe-esp-32-c6-wi-fi-zigbee-korpus-na-din-reyku-dlya-podklyucheniya-1366519367/features/
[86] Термостат OpenTherm 2.2 Wi-Fi 6 (Zigbee) - Sprut.AI https://sprut.ai/catalog/item/termostat-opentherm-2-2-wi-fi-6-zigbee
[87] Термостат OpenTherm 2.2 на чипе ESP 32 C6 (Wi-Fi Zigbee ... https://www.pepper.ru/deals/termostat-opentherm-22-na-cipe-esp-32-c6-wi-fi-zigbee-korpus-na-din-reiku-dlia-podkliuceniia-po-cifrovoi-sine-k-kotlam-otopleniia-opentherm-483469
[88] Термостат OpenTherm 2.2 на чипе ESP 32 C6 (Wi-Fi Zigbee ... https://pikadil.ru/skidki/termostat-opentherm-22-na-chipe-esp-32-c6-wifi-zigbee-korpus-na-dinreyku-dlya-podklyucheniya-k-kotlam-otopleniya-opentherm-s-ozon-ph4
[89] Купить Стик SONOFF Zigbee 3.0 USB Dongle Plus-E https://www.sonoff.ru/product/stik-sonoff-zigbee-30-usb-dongle-plus-e
[90] Характеристики Стик SONOFF Zigbee 3.0 USB Dongle Plus-E ... https://www.ozon.ru/product/stik-sonoff-zigbee-3-0-usb-dongle-plus-e-1219155309/features/
[91] Купить Датчик присутствия SONOFF SNZB-06P - ZigBee https://www.sonoff.ru/product/datchik-prisutstviya-sonoff-snzb-06p-zigbee
[92] Sonoff SNZB-06P Zigbee Human Presence Sensor - MEGATEH.eu https://www.megateh.eu/products/smart-home-automation-sonoff/sonoff-snzb-06p-zigbee-human-presence-sensor
[93] SONOFF SNZB-02D Smart Temperature & Humidity Sensor https://www.sonoff.in/shop/sonoff-snzb-02d-smart-temperature-humidity-sensor-831
[94] How to use the Sonoff Temperature Humidity Sensor SNZB-02D https://www.youtube.com/watch?v=IZML83I7HzI
[95] SONOFF CAM Slim Gen2 Smart Home Security Camera https://sonoff.tech/product/security-cameras/cam-s2/
[96] SONOFF CAM Slim Gen2 Smart Home Security Camera 1080P ... https://www.aliexpress.com/item/1005007877394207.html
[97] Руководство пользователя интеллектуальной камеры ... https://manuals.plus/ru/sonoff/cam-slim-gen2-wi-fi-smart-security-camera-manual
[98] ZigBee - PushOk Hardware - POK005 · Issue #3508 · sprut/Hub https://github.com/sprut/Hub/issues/3508
[99] PushOk Hardware POK005 control via MQTT | Zigbee2MQTT https://www.zigbee2mqtt.io/devices/POK005.html
[100] POK005 Уличный ZigBee датчик температуры и влажности - Озон https://www.ozon.ru/product/pok005-ulichnyy-zigbee-datchik-temperatury-i-vlazhnosti-1474490567/
[101] Does home assistant zigbee integration can integrate with all zigbee ... https://community.home-assistant.io/t/does-home-assistant-zigbee-integration-can-integrate-with-all-zigbee-devices/236973
[102] Умный хаб.С Алисой(через Smart Life).Шлюз,мост.Zigbee+WI FI+ ... https://www.ozon.ru/product/umnyy-hab-s-alisoy-cherez-smart-life-shlyuz-most-zigbee-wi-fi-ble-sigmesh-tyua-s-obnovleniem-1544655803/
[103] Купить ZigBee шлюз - для умного дома Tuya Smart Life https://tu-ya.ru/product/tuya-zigbee-hub/
[104] Moira Tuya Zigbee 3.0/WiFi Multi-Mode Gateway HUB Wireless ... https://www.aliexpress.com/item/1005008125661195.html
[105] Tuya Smart - Global AI Cloud Platform Service Provider https://www.tuya.com
[106] Tuya Smart Life Compatible Devices - AliExpress https://www.aliexpress.com/w/wholesale-tuya-smart-life-compatible-devices.html
[107] What is a Smart Home? Everything You Need to Know - TechTarget https://www.techtarget.com/iotagenda/definition/smart-home-or-building
[108] Smart Home Protocols Explained: Wi-Fi, Zigbee, Z-Wave, Matter ... https://sonoff.tech/news-and-events/works-with/smart-home-protocols-explained-wifi-zigbee-z-wave-matter-thread/
[109] Smart Home Technology Comparison - Silicon Labs https://www.silabs.com/blog/smart-home-technology-comparison
[110] Smart Home: Definition, How It Works, Pros and Cons - Investopedia https://www.investopedia.com/terms/s/smart-home.asp
[1] Датчик Температуры и Влажности Tuya Smart Zigbee - Озон https://www.ozon.ru/category/datchik-temperatury-i-vlazhnosti-tuya-smart-zigbee/
[2] Датчик температуры уличный - ПушОк Хардваре https://pushok.io/devices/pok005
[3] PushOk Hardware POK005 control via MQTT | Zigbee2MQTT https://www.zigbee2mqtt.io/devices/POK005.html
[4] Умный ZigBee датчик температуры и влажности Smart Aura SAZ ... https://smartaura.ru/blogs/data/instruktsiya-po-nastroyke-umnogo-zigbee-datchika-temperatury-i-vlazhnosti-smart-aura-saz-th-001?lang=en
[5] [PDF] POK005 - Термометр - ПушОк Хардваре https://pushok.io/devices/pok005/POK005%20-%20%D0%A2%D0%B5%D1%80%D0%BC%D0%BE%D0%BC%D0%B5%D1%82%D1%80.pdf
[6] Датчик температуры и влажности круглый с Алисой ZBTH3 ... https://bitok.shop/datchik-temperatury-i-vlazhnosti-tuya-smartlife/
[7] Умный VVO ZigBee датчик температуры и влажности Smart Life https://www.ozon.ru/product/umnyy-vvo-zigbee-datchik-temperatury-i-vlazhnosti-smart-life-1861867806/
[8] Датчик температуры и влажности Tuya ZigBee 3.0, удаленный ... https://aliexpress.ru/item/1005002362873744.html
[9] Zigbee 3,0 умный датчик температуры и влажности Samrt Life ... https://aliexpress.ru/item/1005007907101286.html
[10] Датчики температуры и влажности с передачей данных по ИК ... https://market.yandex.ru/search?text=%D0%94%D0%B0%D1%82%D1%87%D0%B8%D0%BA%D0%B8+%D1%82%D0%B5%D0%BC%D0%BF%D0%B5%D1%80%D0%B0%D1%82%D1%83%D1%80%D1%8B+%D0%B8+%D0%B2%D0%BB%D0%B0%D0%B6%D0%BD%D0%BE%D1%81%D1%82%D0%B8+%D1%81+%D0%BF%D0%B5%D1%80%D0%B5%D0%B4%D0%B0%D1%87%D0%B5%D0%B9+%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85+%D0%BF%D0%BE+%D0%98%D0%9A-%D0%9A%D0%B0%D0%BD%D0%B0%D0%BB%D1%83
[11] Умный датчик температуры и влажности Zigbee 3.0, LCD ... - Озон https://www.ozon.ru/product/umnyy-datchik-temperatury-i-vlazhnosti-zigbee-3-0-lcd-alisoy-i-google-assistant-smart-life-1808290469/
[12] POK005 Уличный ZigBee датчик температуры и влажности - Озон https://www.ozon.ru/product/pok005-ulichnyy-zigbee-datchik-temperatury-i-vlazhnosti-1474490567/
[13] POK005L Уличный ZigBee датчик температуры и влажности с ... https://www.ozon.ru/product/pok005l-ulichnyy-zigbee-datchik-temperatury-i-vlazhnosti-s-uvelichennoy-batarey-1744511830/
[14] POK005 Уличный ZigBee датчик температуры и влажности https://market.yandex.ru/product--ulichnyi-zigbee-datchik-temperatury-i-vlazhnosti-belyi-ulichnyi/853979213?sku=103631414211&do-waremd5=O-kQFEpjV5l6i3zoC7P_Qg&uniqueId=176125598
[15] Умное реле Smart Life Tuya Zigbee 3.0 - Sprut.AI https://sprut.ai/catalog/item/umnoe-rele-smart-life-tuya-zigbee-3-0
[16] Обсуждаем ZigBee «Умного Дом» от Tuya / Smart Life (Страница 1) https://broadlink.ru/forum/topic/452/obzor-zigbee-umnogo-doma-ot-tuya-smart-life/
[17] Датчик температуры и влажности Яндекс Zigbee (YNDX-00523) https://2cent.ru/product/datchik-temperatury-i-vlazhnosti-yandeks-zigbee-yndx-00523-29098/
[18] Смарт-датчик температуры и влажности (Wi-Fi, Zigbee) - MySKU https://mysku.club/blog/aliexpress/94555.html
[19] Compact Zigbee Temperature and Humidity Sensor - YouTube https://www.youtube.com/watch?v=meVV8-47X2k
