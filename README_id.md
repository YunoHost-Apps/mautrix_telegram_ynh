<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Matrix-Telegram bridge untuk YunoHost

[![Tingkat integrasi](https://apps.yunohost.org/badge/integration/mautrix_telegram)](https://ci-apps.yunohost.org/ci/apps/mautrix_telegram/)
![Status kerja](https://apps.yunohost.org/badge/state/mautrix_telegram)
![Status pemeliharaan](https://apps.yunohost.org/badge/maintained/mautrix_telegram)

[![Pasang Matrix-Telegram bridge dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mautrix_telegram)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Matrix-Telegram bridge secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

A puppeting bridge between Matrix and Telegram packaged as a YunoHost service. Messages, notifications (and sometimes media) are bridged between a Telegram user and a Matrix user. Currently the Matrix user can NOT invite other Matrix user in a bridged Telegram room, so only someone with a Telegram account can participate to Telegram group conversations. The ["Mautrix-Telegram"](https://docs.mau.fi/bridges/python/telegram/index.html) bridge is a Synapse App Service and relies on postgresql. Therefore, [Synapse for YunoHost](https://github.com/YunoHost-Apps/synapse_ynh) should be installed beforehand.


**Versi terkirim:** 0.15.2~ynh1
## Dokumentasi dan sumber daya

- Website aplikasi resmi: <https://docs.mau.fi/bridges/python/telegram/index.html>
- Dokumentasi pengguna resmi: <https://docs.mau.fi/bridges/python/telegram/management-commands.html>
- Dokumentasi admin resmi: <https://github.com/YunoHost-Apps/mautrix_telegram_ynh>
- Depot kode aplikasi hulu: <https://github.com/mautrix/telegram>
- Gudang YunoHost: <https://apps.yunohost.org/app/mautrix_telegram>
- Laporkan bug: <https://github.com/YunoHost-Apps/mautrix_telegram_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
atau
sudo yunohost app upgrade mautrix_telegram -u https://github.com/YunoHost-Apps/mautrix_telegram_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
