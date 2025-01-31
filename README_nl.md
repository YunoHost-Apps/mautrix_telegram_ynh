<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# Matrix-Telegram bridge voor Yunohost

[![Integratieniveau](https://apps.yunohost.org/badge/integration/mautrix_telegram)](https://ci-apps.yunohost.org/ci/apps/mautrix_telegram/)
![Mate van functioneren](https://apps.yunohost.org/badge/state/mautrix_telegram)
![Onderhoudsstatus](https://apps.yunohost.org/badge/maintained/mautrix_telegram)

[![Matrix-Telegram bridge met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mautrix_telegram)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je Matrix-Telegram bridge snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

A puppeting bridge between Matrix and Telegram packaged as a YunoHost service. Messages, notifications (and sometimes media) are bridged between a Telegram user and a Matrix user. Currently the Matrix user can NOT invite other Matrix user in a bridged Telegram room, so only someone with a Telegram account can participate to Telegram group conversations. The ["Mautrix-Telegram"](https://docs.mau.fi/bridges/python/telegram/index.html) bridge is a Synapse App Service and relies on postgresql. Therefore, [Synapse for YunoHost](https://github.com/YunoHost-Apps/synapse_ynh) should be installed beforehand.


**Geleverde versie:** 0.15.2~ynh1
## Documentatie en bronnen

- Officiele website van de app: <https://docs.mau.fi/bridges/python/telegram/index.html>
- Officiele gebruikersdocumentatie: <https://docs.mau.fi/bridges/python/telegram/management-commands.html>
- Officiele beheerdersdocumentatie: <https://github.com/YunoHost-Apps/mautrix_telegram_ynh>
- Upstream app codedepot: <https://github.com/mautrix/telegram>
- YunoHost-store: <https://apps.yunohost.org/app/mautrix_telegram>
- Meld een bug: <https://github.com/YunoHost-Apps/mautrix_telegram_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
of
sudo yunohost app upgrade mautrix_telegram -u https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
