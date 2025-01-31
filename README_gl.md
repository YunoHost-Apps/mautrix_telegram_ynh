<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# Matrix-Telegram bridge para YunoHost

[![Nivel de integración](https://dash.yunohost.org/integration/mautrix_telegram.svg)](https://ci-apps.yunohost.org/ci/apps/mautrix_telegram/) ![Estado de funcionamento](https://ci-apps.yunohost.org/ci/badges/mautrix_telegram.status.svg) ![Estado de mantemento](https://ci-apps.yunohost.org/ci/badges/mautrix_telegram.maintain.svg)

[![Instalar Matrix-Telegram bridge con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mautrix_telegram)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar Matrix-Telegram bridge de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

A puppeting bridge between Matrix and Telegram packaged as a YunoHost service. Messages, notifications (and sometimes media) are bridged between a Telegram user and a Matrix user. Currently the Matrix user can NOT invite other Matrix user in a bridged Telegram room, so only someone with a Telegram account can participate to Telegram group conversations. The ["Mautrix-Telegram"](https://docs.mau.fi/bridges/python/telegram/index.html) bridge is a Synapse App Service and relies on postgresql. Therefore, [Synapse for YunoHost](https://github.com/YunoHost-Apps/synapse_ynh) should be installed beforehand.


**Versión proporcionada:** 0.15.2~ynh1
## Documentación e recursos

- Web oficial da app: <https://docs.mau.fi/bridges/python/telegram/index.html>
- Documentación oficial para usuarias: <https://docs.mau.fi/bridges/python/telegram/management-commands.html>
- Documentación oficial para admin: <https://github.com/YunoHost-Apps/mautrix_telegram_ynh>
- Repositorio de orixe do código: <https://github.com/mautrix/telegram>
- Tenda YunoHost: <https://apps.yunohost.org/app/mautrix_telegram>
- Informar dun problema: <https://github.com/YunoHost-Apps/mautrix_telegram_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
ou
sudo yunohost app upgrade mautrix_telegram -u https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>
