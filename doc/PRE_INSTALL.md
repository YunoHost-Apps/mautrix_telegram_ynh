#### Multi-user support

* Bot users are not related to Yunohost users. Any Matrix account or Synapse server autorized in the configuration of the bridge can invite/use the bot.
* The Telegram bot is a local Matrix-Synapse user, but accessible through federation (synapse public or private).
* Several Telegram and Matrix users can be bridged with one bridge, each user has its own bot administration room.
* If several bot users are in a same Telegram group, only one Matrix room will be created by the bridge.
* See https://github.com/YunoHost-Apps/synapse_ynh#multi-users-support

#### Multi-instance support

* Multi-instance installation should work. Several bridge instances could be installed for one Matrix-Synapse instance so that one Matrix user can bridge several Telegram accounts.
* Several bridge instances could be installed for each Matrix-Synapse instance to benefit from it. But one bridge can be used by users from several Matrix-Synapse instances.