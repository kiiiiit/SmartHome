# Умный дом на базе Home Assistant

[![Home Assistant](https://img.shields.io/badge/Home%20Assistant-Core-blue?style=for-the-badge&logo=home-assistant)](https://www.home-assistant.io/)
[![YAML](https://img.shields.io/badge/Language-YAML-yellow.svg?style=for-the-badge)](https://yaml.org/)
[![Project Status](https://img.shields.io/badge/status-active-brightgreen.svg?style=for-the-badge)](./)

Это репозиторий с конфигурацией для системы умного дома на базе Home Assistant. Проект разработан с упором на модульность, надежность и простоту дальнейшего расширения.

---

## 🚀 Ключевые особенности

- **📦 Модульная структура:** Вся конфигурация разделена на `packages` (пакеты), где каждый пакет отвечает за свою логику (например, `boiler.yaml`, `zigbee.yaml`). Это делает систему чистой и легко управляемой.
- **🌡️ Погодозависимое управление отоплением:** Система автоматически регулирует температуру котла на основе данных с уличного датчика, используя протокол OpenTherm.
- **🏠 Адаптивный климат-контроль:** Температура в доме автоматически подстраивается под присутствие людей, время суток, фазы сна и даже показатели здоровья с Apple Watch.
- **🍏 Глубокая интеграция с Apple:** Полная поддержка HomeKit, управление через Apple TV, реакция на местоположение iPhone и использование AirPlay-устройств.
- **🚨 Продвинутая система оповещений:** Уведомления о низком заряде батарей на всех устройствах, об отвале Zigbee-сенсоров и об экстремальных погодных условиях.
- **💡 Централизованные скрипты:** Ключевая логика (например, установка температуры) вынесена в единые скрипты, что исключает дублирование кода.

---

## ⚙️ Структура конфигурации

Проект использует подход "Packages", который позволяет группировать всю конфигурацию, связанную с одной функциональной частью, в одном файле.

- `config/packages/core/`: Ядро системы. Содержит базовые `input_*` хелперы, шаблоны, сцены и ключевые скрипты.
- `config/packages/devices/`: Описание всего оборудования. Каждый файл (`boiler.yaml`, `zigbee.yaml`) содержит сущности и настройки для конкретных устройств.
- `config/packages/automation/`: Вся логика автоматизаций. Файлы сгруппированы по назначению (климат, Apple, Zigbee).

---

## 🛠️ Установка и настройка

1.  **Клонирование репозитория:**
    Скопируйте содержимое этого репозитория в вашу папку `/config` Home Assistant.

2.  **Создание `secrets.yaml`:**
    В папке `/config` создайте файл `secrets.yaml` и заполните его по шаблону ниже. **Это самый важный шаг.**

    ```yaml
    # config/secrets.yaml

    # Координаты вашего дома
    latitude: "YOUR_LATITUDE"
    longitude: "YOUR_LONGITUDE"
    elevation: "YOUR_ELEVATION"

    # URL-адреса для доступа
    external_url: "https://your_external_url.duckdns.org"
    internal_url: "http://your_internal_ip:8123"

    # Данные Apple TV
    apple_tv_ip: "IP_ADDRESS_OF_APPLE_TV"
    apple_tv_login_id: "YOUR_APPLE_TV_LOGIN_ID"

    # Данные AirPlay устройства
    airplay_ip: "IP_ADDRESS_OF_AIRPLAY_DEVICE"

    # Данные для управления MacBook через SSH
    macbook_user: "your_macbook_username"
    macbook_ip: "IP_ADDRESS_OF_MACBOOK"

    # Данные iCloud для отслеживания (используйте пароль для приложений)
    icloud_username: "your_icloud_email@apple.com"
    icloud_password: "YOUR_ICLOUD_APP_SPECIFIC_PASSWORD"
    ```

3.  **Настройка интеграций через UI:**
    После перезапуска Home Assistant перейдите в **Настройки > Устройства и службы** и добавьте следующие интеграции, если они не определились автоматически:
    - **MQTT:** Настройте подключение к вашему Mosquitto брокеру.
    - **ZHA (Zigbee Home Automation):** Выберите ваш Zigbee-координатор (SONOFF Dongle).
    - **iCloud:** Введите логин и пароль.

4.  **Перезапуск Home Assistant:**
    Выполните полный перезапуск Home Assistant, чтобы применились все конфигурации.

---

## 🔌 Аппаратное обеспечение

Полный список используемого в проекте оборудования, включая модели и характеристики, доступен в файле:
[**docs/Equipment list.md**](./docs/Equipment%20list.md)

---

## 🤖 Автоматизации

Подробное описание логики работы каждой автоматизации в проекте доступно в файле:
[**docs/Automations.md**](./docs/Automations.md)