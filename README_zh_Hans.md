<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Matrix-Telegram bridge

[![集成程度](https://apps.yunohost.org/badge/integration/mautrix_telegram)](https://ci-apps.yunohost.org/ci/apps/mautrix_telegram/)
![工作状态](https://apps.yunohost.org/badge/state/mautrix_telegram)
![维护状态](https://apps.yunohost.org/badge/maintained/mautrix_telegram)

[![使用 YunoHost 安装 Matrix-Telegram bridge](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mautrix_telegram)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Matrix-Telegram bridge。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

A puppeting bridge between Matrix and Telegram packaged as a YunoHost service. Messages, notifications (and sometimes media) are bridged between a Telegram user and a Matrix user. Currently the Matrix user can NOT invite other Matrix user in a bridged Telegram room, so only someone with a Telegram account can participate to Telegram group conversations. The ["Mautrix-Telegram"](https://docs.mau.fi/bridges/python/telegram/index.html) bridge is a Synapse App Service and relies on postgresql. Therefore, [Synapse for YunoHost](https://github.com/YunoHost-Apps/synapse_ynh) should be installed beforehand.


**分发版本：** 0.15.2~ynh1
## 文档与资源

- 官方应用网站： <https://docs.mau.fi/bridges/python/telegram/index.html>
- 官方用户文档： <https://docs.mau.fi/bridges/python/telegram/management-commands.html>
- 官方管理文档： <https://github.com/YunoHost-Apps/mautrix_telegram_ynh>
- 上游应用代码库： <https://github.com/mautrix/telegram>
- YunoHost 商店： <https://apps.yunohost.org/app/mautrix_telegram>
- 报告 bug： <https://github.com/YunoHost-Apps/mautrix_telegram_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
或
sudo yunohost app upgrade mautrix_telegram -u https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
