# A Matrix-Signal puppeting bridge for YunoHost

[![Integration level](https://dash.yunohost.org/integration/mautrix_signal.svg)](https://dash.yunohost.org/appci/app/mautrix_signal) ![](https://ci-apps.yunohost.org/ci/badges/mautrix_signal.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/mautrix_signal.maintain.svg)  
[![Install Mautrix-Signal with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mautrix_signal)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Mautrix-Signal quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
A puppeting bridge between Matrix and Signal packaged as a YunoHost service. Messages, notifications (and sometimes media) are bridged between a Signal user and a Matrix user. Currently the Matrix user can NOT invite other Matrix user in a bridged Signal room, so only someone with a Signal account can participate to Signal group conversations. The ["Mautrix-Signal"](https://docs.mau.fi/bridges/python/signal/index.html) bridge consists in a Synapse App Service and relies on postgresql (mysql also possible). Therefore, [Synapse for YunoHost](https://github.com/YunoHost-Apps/synapse_ynh) should be installed beforehand.

**Shipped version:** 0.1.0

## Screenshots

![](Link to a screenshot of this app.)

## List of known public services

* Ask on one of the following rooms: #mautrix_yunohost:matrix.fdn.fr or #signal:maunium.net

## Bridging usage
** Note that several Signal and Matrix users can be bridged, each Signal account has its own bot administration room. If they are in a same Signal group, only one matrix room will be created. **

### Bridge a Signal user and a Matrix user
* First your Matrix user or Synapse Server has to be authorized in the Configuration of the bridge (see below)
* Then, invite the bot (default @signalbot:yoursynapse.domain) in this new Mautrix-Signal bot administration room.
  * If the Bot does bot accept, see the [troubleshooting page](https://docs.mau.fi/bridges/general/troubleshooting.html)
* Send ``!sg help`` to the bot in the created room to know how to control the bot.
See also [upstream wiki Authentication page](https://docs.mau.fi/bridges/python/signal/authentication.html)

#### Linking the Bridge as a secondary device
* Type ``!sg link``
* Open Signal App of your primary device
* Open Settings => Linked Devices => Capture the QR code with the camera
* By defaults, only conversations with very recent messages will be bridged
* Accept invitations to the bridged chat rooms
#### Registering the Bridge as a primary device
* Type ``!sg register <phone>``, where ``<phone>`` is your phone number in the internation format with no space, e.g. ``!sg register +33612345678``
* Answer in the bot room with the verification code that you reveived in SMS.
* Set a profile name with ``!sg set-profile-name <name>``

### Double puppeting
* Log in with ``login-matrix <access token>``
* After logging in, the default Matrix puppet of your Signal account should leave rooms and your account should join all rooms the puppet was in automatically.


### Relaybot: Bridge a group for several Matrix and several Signal users to chat together
Not yet available

## Configuration of the bridge

The bridge is [roughly configured at installation](https://github.com/YunoHost-Apps/mautrix_signal_ynh/blob/master/conf/config.yaml), e.g. allowed admin and user of the bot. Finer configuration can be done by modifying the
following configuration file with SSH: 
```/opt/yunohost/mautrix_signal/config.yaml```
and then restarting the mautrix_signal service.

## Documentation

 * Official "Mautrix-Signal" documentation: https://docs.mau.fi/bridges/python/signal/index.html
 * Matrix room (Matrix Bridges in Yunohost): #mautrix_yunohost:matrix.fdn.fr
 * Matrix room (upstream app): #signal:maunium.net
In case you need to upload your logs somewhere, be aware that they contain your contacts' and your phone numbers. Strip them out with 
``| sed -r 's/[0-9]{10,}/📞/g' ``
 * "Mautrix-Signal" bridge is based on the [signal daemon](https://gitlab.com/signald/signald) project.
 * YunoHost documentation: If more specific documentation is needed, feel free to contribute.

## YunoHost specific features

#### Multi-user support

* Bot users are not related to Yunohost users. Any Matrix account or Synapse server autorized in the configuration of the bridge can invite/use the bot. 
* The Signal bot is a local Matrix-Synapse user, but accessible through federation (synapse public or private).
* Several Signal and Matrix users can be bridged with one bridge, each user has its own bot administration room. 
* If several bot users are in a same Signal group, only one Matrix room will be created by the bridge.
* See https://github.com/YunoHost-Apps/synapse_ynh#multi-users-support

#### Multi-instance support

* Multi-instance installation should work. Several bridge instances could be installed for one Matrix-Synapse instance so that one Matrix user can bridge several Signal accounts. 
* Several bridge instances could be installed for each Matrix-Synapse instance to benefit from it. But one bridge can be used by users from several Matrix-Synapse instances.

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/mautrix_signal%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/mautrix_signal/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/mautrix_signal%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/mautrix_signal/)

## Limitations

* It looks like media are not bridged. 
* Signal chats are not grouped in a Matrix community (as opposed to the Mautrix-WhatsApp or Mautrix-Facebook bridges)

## Additional information

* Other info you would like to add about this app.

**More info on the documentation page:**  
https://docs.mau.fi/bridges/python/signal/index.html

## Links

 * Report a bug: https://github.com/YunoHost-Apps/mautrix_signal_ynh/issues
 * App website: https://github.com/YunoHost-Apps/mautrix-whatsapp_ynh
 * Upstream app documentation: https://docs.mau.fi/bridges/python/signal/index.html
 * Upstream app repository: https://github.com/tulir/mautrix-signal
 * Up-Upstream repository: https://gitlab.com/signald/signald
 * YunoHost website: https://yunohost.org/

---

## Developer info

**Only if you want to use a testing branch for coding, instead of merging directly into master.**
Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/mautrix_signal_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/mautrix_signal_ynh/tree/testing --debug
or
sudo yunohost app upgrade mautrix_signal -u https://github.com/YunoHost-Apps/mautrix_signal_ynh/tree/testing --debug
```

To test communication between the App Service and Matrix-Synapse on a VM (e.g. with domain name: synapse.vm), you must install a certificate:
```
echo | openssl s_client -showcerts -servername synapse.vm -connect synapse.vm:443 2>/dev/null | awk '/-----BEGIN CERTIFICATE-----/, /-----END CERTIFICATE-----/' >> /usr/local/share/ca-certificates/synapse.vm.crt
update-ca-certificates
```
