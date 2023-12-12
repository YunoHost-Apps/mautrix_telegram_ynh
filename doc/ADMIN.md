## Configuration of the bridge

The bridge is [roughly configured at installation](https://github.com/YunoHost-Apps/mautrix_telegram_ynh/blob/master/conf/config.yaml), e.g. allowed admin and user of the bot. Finer configuration can be done by modifying the
following configuration file with SSH:
```/opt/yunohost/mautrix_telegram/config.yaml```
and then restarting the mautrix_telegram service.

#### End-to-bridge encryption

The bridge can optionally encrypt messages between Matrix users and the bridge to hide messages from the homeserver. Using Postgres is strongly recommended when using end-to-bridge encryption.
If you want to enable it, look for the option ```bridge: encryption``` in the config file. If you only set ```allow: true```, the bridge won't enable encryption on its own, but will work in encrypted rooms. If you set ```default: true```, the bridge will automatically enable encryption in new portals.

There is also the possibility to set ```require: true``` to enforce encryption on any of the messages that you send (this will drop any unencrypted messages).

## Documentation

* Official "Mautrix-Telegram" documentation: https://docs.mau.fi/bridges/python/telegram/index.html
* Matrix room (Matrix Bridges in Yunohost): #mautrix_yunohost:matrix.fdn.fr
* Matrix room (upstream app): #telegram:maunium.net
  In case you need to upload your logs somewhere, be aware that they contain your contacts' and your phone numbers. Strip them out with
  ``| sed -r 's/[0-9]{10,}/📞/g' ``
* "Mautrix-Telegram" bridge is based on the [telegram daemon](https://gitlab.com/telegramd/telegramd) project.
* YunoHost documentation: If more specific documentation is needed, feel free to contribute.

## Troubleshooting

* Check the spelling of the bot name!
* For slow servers it might be necessary to run ``systemctl edit mautrix_telegram.service`` (also for `coturn.service` and `coturn-synapse.service`) and insert
```
[Service]
ExecStartPre=/bin/sleep 90
```
such that it is ensured that synapse is running before the bridge tries to connect.
(If it worked after installation but broke after a restart this probably is it.)