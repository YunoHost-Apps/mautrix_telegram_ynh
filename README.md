<!--
N.B.: This README was automatically generated by https://github.com/YunoHost/apps/tree/master/tools/README-generator
It shall NOT be edited by hand.
-->

# Matrix-Telegram bridge for YunoHost

[![Integration level](https://dash.yunohost.org/integration/mautrix_telegram.svg)](https://dash.yunohost.org/appci/app/mautrix_telegram) ![Working status](https://ci-apps.yunohost.org/ci/badges/mautrix_telegram.status.svg) ![Maintenance status](https://ci-apps.yunohost.org/ci/badges/mautrix_telegram.maintain.svg)

[![Install Matrix-Telegram bridge with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mautrix_telegram)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Matrix-Telegram bridge quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview

A puppeting bridge between Matrix and Telegram packaged as a YunoHost service. Messages, notifications (and sometimes media) are bridged between a Telegram user and a Matrix user. Currently the Matrix user can NOT invite other Matrix user in a bridged Telegram room, so only someone with a Telegram account can participate to Telegram group conversations. The ["Mautrix-Telegram"](https://docs.mau.fi/bridges/python/telegram/index.html) bridge is a Synapse App Service and relies on postgresql. Therefore, [Synapse for YunoHost](https://github.com/YunoHost-Apps/synapse_ynh) should be installed beforehand.


**Shipped version:** 0.14.2~ynh1
## Documentation and resources

* Official app website: <https://docs.mau.fi/bridges/python/telegram/index.html>
* Official user documentation: <https://docs.mau.fi/bridges/python/telegram/management-commands.html>
* Official admin documentation: <https://github.com/YunoHost-Apps/mautrix_telegram_ynh>
* Upstream app code repository: <https://github.com/mautrix/telegram>
* YunoHost Store: <https://apps.yunohost.org/app/mautrix_telegram>
* Report a bug: <https://github.com/YunoHost-Apps/mautrix_telegram_ynh/issues>

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing).

To try the testing branch, please proceed like that.

``` bash
sudo yunohost app install https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
or
sudo yunohost app upgrade mautrix_telegram -u https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
