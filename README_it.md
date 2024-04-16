<!--
N.B.: Questo README è stato automaticamente generato da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON DEVE essere modificato manualmente.
-->

# Matrix-Telegram bridge per YunoHost

[![Livello di integrazione](https://dash.yunohost.org/integration/mautrix_telegram.svg)](https://dash.yunohost.org/appci/app/mautrix_telegram) ![Stato di funzionamento](https://ci-apps.yunohost.org/ci/badges/mautrix_telegram.status.svg) ![Stato di manutenzione](https://ci-apps.yunohost.org/ci/badges/mautrix_telegram.maintain.svg)

[![Installa Matrix-Telegram bridge con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mautrix_telegram)

*[Leggi questo README in altre lingue.](./ALL_README.md)*

> *Questo pacchetto ti permette di installare Matrix-Telegram bridge su un server YunoHost in modo semplice e veloce.*  
> *Se non hai YunoHost, consulta [la guida](https://yunohost.org/install) per imparare a installarlo.*

## Panoramica

A puppeting bridge between Matrix and Telegram packaged as a YunoHost service. Messages, notifications (and sometimes media) are bridged between a Telegram user and a Matrix user. Currently the Matrix user can NOT invite other Matrix user in a bridged Telegram room, so only someone with a Telegram account can participate to Telegram group conversations. The ["Mautrix-Telegram"](https://docs.mau.fi/bridges/python/telegram/index.html) bridge is a Synapse App Service and relies on postgresql. Therefore, [Synapse for YunoHost](https://github.com/YunoHost-Apps/synapse_ynh) should be installed beforehand.


**Versione pubblicata:** 0.15.1~ynh2
## Documentazione e risorse

- Sito web ufficiale dell’app: <https://docs.mau.fi/bridges/python/telegram/index.html>
- Documentazione ufficiale per gli utenti: <https://docs.mau.fi/bridges/python/telegram/management-commands.html>
- Documentazione ufficiale per gli amministratori: <https://github.com/YunoHost-Apps/mautrix_telegram_ynh>
- Repository upstream del codice dell’app: <https://github.com/mautrix/telegram>
- Store di YunoHost: <https://apps.yunohost.org/app/mautrix_telegram>
- Segnala un problema: <https://github.com/YunoHost-Apps/mautrix_telegram_ynh/issues>

## Informazioni per sviluppatori

Si prega di inviare la tua pull request alla [branch di `testing`](https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing).

Per provare la branch di `testing`, si prega di procedere in questo modo:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
o
sudo yunohost app upgrade mautrix_telegram -u https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
```

**Maggiori informazioni riguardo il pacchetto di quest’app:** <https://yunohost.org/packaging_apps>
