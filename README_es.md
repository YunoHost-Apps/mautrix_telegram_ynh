<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# Matrix-Telegram bridge para Yunohost

[![Nivel de integración](https://dash.yunohost.org/integration/mautrix_telegram.svg)](https://dash.yunohost.org/appci/app/mautrix_telegram) ![Estado funcional](https://ci-apps.yunohost.org/ci/badges/mautrix_telegram.status.svg) ![Estado En Mantención](https://ci-apps.yunohost.org/ci/badges/mautrix_telegram.maintain.svg)

[![Instalar Matrix-Telegram bridge con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mautrix_telegram)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarMatrix-Telegram bridge rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

A puppeting bridge between Matrix and Telegram packaged as a YunoHost service. Messages, notifications (and sometimes media) are bridged between a Telegram user and a Matrix user. Currently the Matrix user can NOT invite other Matrix user in a bridged Telegram room, so only someone with a Telegram account can participate to Telegram group conversations. The ["Mautrix-Telegram"](https://docs.mau.fi/bridges/python/telegram/index.html) bridge is a Synapse App Service and relies on postgresql. Therefore, [Synapse for YunoHost](https://github.com/YunoHost-Apps/synapse_ynh) should be installed beforehand.


**Versión actual:** 0.15.1~ynh2
## Documentaciones y recursos

- Sitio web oficial: <https://docs.mau.fi/bridges/python/telegram/index.html>
- Documentación usuario oficial: <https://docs.mau.fi/bridges/python/telegram/management-commands.html>
- Documentación administrador oficial: <https://github.com/YunoHost-Apps/mautrix_telegram_ynh>
- Repositorio del código fuente oficial de la aplicación : <https://github.com/mautrix/telegram>
- Catálogo YunoHost: <https://apps.yunohost.org/app/mautrix_telegram>
- Reportar un error: <https://github.com/YunoHost-Apps/mautrix_telegram_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [`branch testing`](https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
o
sudo yunohost app upgrade mautrix_telegram -u https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>
