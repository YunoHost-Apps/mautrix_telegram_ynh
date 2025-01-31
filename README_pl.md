<!--
To README zostało automatycznie wygenerowane przez <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Nie powinno być ono edytowane ręcznie.
-->

# Matrix-Telegram bridge dla YunoHost

[![Poziom integracji](https://apps.yunohost.org/badge/integration/mautrix_telegram)](https://ci-apps.yunohost.org/ci/apps/mautrix_telegram/)
![Status działania](https://apps.yunohost.org/badge/state/mautrix_telegram)
![Status utrzymania](https://apps.yunohost.org/badge/maintained/mautrix_telegram)

[![Zainstaluj Matrix-Telegram bridge z YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mautrix_telegram)

*[Przeczytaj plik README w innym języku.](./ALL_README.md)*

> *Ta aplikacja pozwala na szybką i prostą instalację Matrix-Telegram bridge na serwerze YunoHost.*  
> *Jeżeli nie masz YunoHost zapoznaj się z [poradnikiem](https://yunohost.org/install) instalacji.*

## Przegląd

A puppeting bridge between Matrix and Telegram packaged as a YunoHost service. Messages, notifications (and sometimes media) are bridged between a Telegram user and a Matrix user. Currently the Matrix user can NOT invite other Matrix user in a bridged Telegram room, so only someone with a Telegram account can participate to Telegram group conversations. The ["Mautrix-Telegram"](https://docs.mau.fi/bridges/python/telegram/index.html) bridge is a Synapse App Service and relies on postgresql. Therefore, [Synapse for YunoHost](https://github.com/YunoHost-Apps/synapse_ynh) should be installed beforehand.


**Dostarczona wersja:** 0.15.2~ynh1
## Dokumentacja i zasoby

- Oficjalna strona aplikacji: <https://docs.mau.fi/bridges/python/telegram/index.html>
- Oficjalna dokumentacja: <https://docs.mau.fi/bridges/python/telegram/management-commands.html>
- Oficjalna dokumentacja dla administratora: <https://github.com/YunoHost-Apps/mautrix_telegram_ynh>
- Repozytorium z kodem źródłowym: <https://github.com/mautrix/telegram>
- Sklep YunoHost: <https://apps.yunohost.org/app/mautrix_telegram>
- Zgłaszanie błędów: <https://github.com/YunoHost-Apps/mautrix_telegram_ynh/issues>

## Informacje od twórców

Wyślij swój pull request do [gałęzi `testing`](https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing).

Aby wypróbować gałąź `testing` postępuj zgodnie z instrukcjami:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
lub
sudo yunohost app upgrade mautrix_telegram -u https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
```

**Więcej informacji o tworzeniu paczek aplikacji:** <https://yunohost.org/packaging_apps>
