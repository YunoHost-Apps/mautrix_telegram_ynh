<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Matrix-Telegram bridge YunoHost-erako

[![Integrazio maila](https://apps.yunohost.org/badge/integration/mautrix_telegram)](https://ci-apps.yunohost.org/ci/apps/mautrix_telegram/)
![Funtzionamendu egoera](https://apps.yunohost.org/badge/state/mautrix_telegram)
![Mantentze egoera](https://apps.yunohost.org/badge/maintained/mautrix_telegram)

[![Instalatu Matrix-Telegram bridge YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mautrix_telegram)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Matrix-Telegram bridge YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

A puppeting bridge between Matrix and Telegram packaged as a YunoHost service. Messages, notifications (and sometimes media) are bridged between a Telegram user and a Matrix user. Currently the Matrix user can NOT invite other Matrix user in a bridged Telegram room, so only someone with a Telegram account can participate to Telegram group conversations. The ["Mautrix-Telegram"](https://docs.mau.fi/bridges/python/telegram/index.html) bridge is a Synapse App Service and relies on postgresql. Therefore, [Synapse for YunoHost](https://github.com/YunoHost-Apps/synapse_ynh) should be installed beforehand.


**Paketatutako bertsioa:** 0.15.2~ynh1
## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://docs.mau.fi/bridges/python/telegram/index.html>
- Erabiltzaileen dokumentazio ofiziala: <https://docs.mau.fi/bridges/python/telegram/management-commands.html>
- Administratzaileen dokumentazio ofiziala: <https://github.com/YunoHost-Apps/mautrix_telegram_ynh>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/mautrix/telegram>
- YunoHost Denda: <https://apps.yunohost.org/app/mautrix_telegram>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/mautrix_telegram_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
edo
sudo yunohost app upgrade mautrix_telegram -u https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
