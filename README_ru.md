<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# Matrix-Telegram bridge для YunoHost

[![Уровень интеграции](https://apps.yunohost.org/badge/integration/mautrix_telegram)](https://ci-apps.yunohost.org/ci/apps/mautrix_telegram/)
![Состояние работы](https://apps.yunohost.org/badge/state/mautrix_telegram)
![Состояние сопровождения](https://apps.yunohost.org/badge/maintained/mautrix_telegram)

[![Установите Matrix-Telegram bridge с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mautrix_telegram)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить Matrix-Telegram bridge быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

A puppeting bridge between Matrix and Telegram packaged as a YunoHost service. Messages, notifications (and sometimes media) are bridged between a Telegram user and a Matrix user. Currently the Matrix user can NOT invite other Matrix user in a bridged Telegram room, so only someone with a Telegram account can participate to Telegram group conversations. The ["Mautrix-Telegram"](https://docs.mau.fi/bridges/python/telegram/index.html) bridge is a Synapse App Service and relies on postgresql. Therefore, [Synapse for YunoHost](https://github.com/YunoHost-Apps/synapse_ynh) should be installed beforehand.


**Поставляемая версия:** 0.15.2~ynh1
## Документация и ресурсы

- Официальный веб-сайт приложения: <https://docs.mau.fi/bridges/python/telegram/index.html>
- Официальная документация пользователя: <https://docs.mau.fi/bridges/python/telegram/management-commands.html>
- Официальная документация администратора: <https://github.com/YunoHost-Apps/mautrix_telegram_ynh>
- Репозиторий кода главной ветки приложения: <https://github.com/mautrix/telegram>
- Магазин YunoHost: <https://apps.yunohost.org/app/mautrix_telegram>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/mautrix_telegram_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
или
sudo yunohost app upgrade mautrix_telegram -u https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
