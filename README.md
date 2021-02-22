# A Matrix-Telegram puppeting bridge for YunoHost

[![Integration level](https://dash.yunohost.org/integration/mautrix_telegram.svg)](https://dash.yunohost.org/appci/app/mautrix_telegram) ![](https://ci-apps.yunohost.org/ci/badges/mautrix_telegram.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/mautrix_telegram.maintain.svg)  
[![Install Mautrix-Telegram with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mautrix_telegram)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Mautrix-Telegram quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
A puppeting bridge between Matrix and Telegram packaged as a YunoHost service. Messages, notifications (and sometimes media) are bridged between a Telegram user and a Matrix user. Currently the Matrix user can NOT invite other Matrix user in a bridged Telegram room, so only someone with a Telegram account can participate to Telegram group conversations. The ["Mautrix-Telegram"](https://docs.mau.fi/bridges/python/telegram/index.html) bridge consists in a Synapse App Service and relies on postgresql (mysql also possible). Therefore, [Synapse for YunoHost](https://github.com/YunoHost-Apps/synapse_ynh) should be installed beforehand.

**Shipped version:** 0.1.0

## Screenshots

![](Link to a screenshot of this app.)

## List of known public services

* Ask on one of the following rooms: #mautrix_yunohost:matrix.fdn.fr or #telegram:maunium.net

## Bridging usage
** Note that several Telegram and Matrix users can be bridged, each Telegram account has its own bot administration room. If they are in a same Telegram group, only one matrix room will be created. **

### Bridge a Telegram user and a Matrix user
* First your Matrix user or Synapse Server has to be authorized in the Configuration of the bridge (see below)
* Then, invite the bot (default @telegrambot:yoursynapse.domain) in this new Mautrix-Telegram bot administration room.
  * If the Bot does bot accept, see the [troubleshooting page](https://docs.mau.fi/bridges/general/troubleshooting.html)
* Send ``!tg help`` to the bot in the created room to know how to control the bot.
See also [upstream wiki Authentication page](https://docs.mau.fi/bridges/python/telegram/authentication.html)

#### Logging into Telegram account
* Type ``login`` or ``login-qr`` (untested) in main management room (`!tg` in any bridge room)
* follow setup instructions from bot
* By defaults, only conversations with very recent messages and groups will be suggested to be bridged
* Accept invitations to the bridged chat rooms
#### Registering the Bridge as a primary device (untested)
* Type ``!tg register <phone>``, where ``<phone>`` is your phone number in the internation format with no space, e.g. ``!tg register +33612345678``
* Answer in the bot room with the verification code that you reveived in SMS.
* Set a profile name with ``!tg set-profile-name <name>``

### Double puppeting
* Log in with ``login-matrix <access token>``
* After logging in, the default Matrix puppet of your Telegram account should leave rooms and your account should join all rooms the puppet was in automatically.


### Relaybot: Bridge a group for several Matrix and several Telegram users to chat together
Not yet available

## Configuration of the bridge

The bridge is [roughly configured at installation](https://github.com/YunoHost-Apps/mautrix_telegram_ynh/blob/master/conf/config.yaml), e.g. allowed admin and user of the bot. Finer configuration can be done by modifying the
following configuration file with SSH: 
```/opt/yunohost/mautrix_telegram/config.yaml```
and then restarting the mautrix_telegram service.

## Documentation

 * Official "Mautrix-Telegram" documentation: https://docs.mau.fi/bridges/python/telegram/index.html
 * Matrix room (Matrix Bridges in Yunohost): #mautrix_yunohost:matrix.fdn.fr
 * Matrix room (upstream app): #telegram:maunium.net
In case you need to upload your logs somewhere, be aware that they contain your contacts' and your phone numbers. Strip them out with 
``| sed -r 's/[0-9]{10,}/📞/g' ``
 * "Mautrix-Telegram" bridge is based on the [telegram daemon](https://gitlab.com/telegramd/telegramd) project.
 * YunoHost documentation: If more specific documentation is needed, feel free to contribute.

## YunoHost specific features

#### Multi-user support

* Bot users are not related to Yunohost users. Any Matrix account or Synapse server autorized in the configuration of the bridge can invite/use the bot. 
* The Telegram bot is a local Matrix-Synapse user, but accessible through federation (synapse public or private).
* Several Telegram and Matrix users can be bridged with one bridge, each user has its own bot administration room. 
* If several bot users are in a same Telegram group, only one Matrix room will be created by the bridge.
* See https://github.com/YunoHost-Apps/synapse_ynh#multi-users-support

#### Multi-instance support

* Multi-instance installation should work. Several bridge instances could be installed for one Matrix-Synapse instance so that one Matrix user can bridge several Telegram accounts. 
* Several bridge instances could be installed for each Matrix-Synapse instance to benefit from it. But one bridge can be used by users from several Matrix-Synapse instances.

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/mautrix_telegram%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/mautrix_telegram/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/mautrix_telegram%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/mautrix_telegram/)


## Troubleshooting

* Check the spelling of the bot name!
* For slow servers it might be necessary to run ``systemctl edit mautrix_telegram.service`` (also for `coturn.service` and `coturn-synapse.service`) and insert
```
[Service]
ExecStartPre=/bin/sleep 90
```
such that it is ensured that synapse is running before the bridge tries to connect.
(If it worked after installation but broke after a restart this probably is it.)

## Additional information

* Other info you would like to add about this app.

**More info on the documentation page:**  
https://docs.mau.fi/bridges/python/telegram/index.html

## Links

 * Report a bug: https://github.com/YunoHost-Apps/mautrix_telegram_ynh/issues
 * App website: https://github.com/YunoHost-Apps/mautrix-whatsapp_ynh
 * Upstream app documentation: https://docs.mau.fi/bridges/python/telegram/index.html
 * Upstream app repository: https://github.com/tulir/mautrix-telegram
 * Up-Upstream repository: https://gitlab.com/telegramd/telegramd
 * YunoHost website: https://yunohost.org/

---

## Developer info

**Only if you want to use a testing branch for coding, instead of merging directly into master.**
Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
or
sudo yunohost app upgrade mautrix_telegram -u https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
```

To test communication between the App Service and Matrix-Synapse on a VM (e.g. with domain name: synapse.vm), you must install a certificate:
```
echo | openssl s_client -showcerts -servername synapse.vm -connect synapse.vm:443 2>/dev/null | awk '/-----BEGIN CERTIFICATE-----/, /-----END CERTIFICATE-----/' >> /usr/local/share/ca-certificates/synapse.vm.crt
update-ca-certificates
```
