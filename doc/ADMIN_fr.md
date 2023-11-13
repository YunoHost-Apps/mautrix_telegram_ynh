### Configuration de la passerelle

La passerelle est [configurée avec les paramètres standards adaptés pour votre YunoHost et l'instance Matrix-Synapse sélectionnée](https://github.com/YunoHost-Apps/mautrix_telegram_ynh/blob/master/conf/config.yaml). Vous pouvez par exemple ajouter des administrateur.ice.s et utilisateur.ice.s du Robot autorisés en modifiant le fichier de configuration par liaison SSH:
``` sudo nano /opt/yunohost/mautrix_whatsapp/config.yaml```
puis en redémarrant le service:
``` sudo yunohost service restart mautrix_whatsapp```

#### Cryptage End-to-bridge

Le robot peut éventuellement chiffrer les messages entre les utilisateurs de Matrix et la passarelle pour cacher les messages du serveur domestique. L'utilisation de Postgres est fortement recommandée lors de l'utilisation du chiffrement end-to-bridge.
Si vous voulez l'activer, cherchez l'option ```bridge: encryption``` dans le fichier de configuration. Si vous définissez uniquement l'option ``allow: true``, le robot n'activera pas le chiffrement de lui-même, mais travaillera dans les portails chiffrés. Si vous définissez ```default: true```, la passerelle activera automatiquement le chiffrement dans les nouveaux portails.

Il y a également la possibilité de définir ```require: true``` pour imposer le chiffrement sur tous les messages que vous envoyez (cela interdira tous les messages non chiffrés).

## Documentation

* Documentation officielle "Mautrix-Telegram" : https://docs.mau.fi/bridges/python/telegram/index.html
* Matrix room (Matrix Bridges dans Yunohost) : #mautrix_yunohost:matrix.fdn.fr
* Salle Matrix (upstream app) : #telegram:maunium.net
  Au cas où vous devriez télécharger vos logs quelque part, sachez qu'ils contiennent vos contacts et vos numéros de téléphone. Supprimez-les avec
  ``| sed -r 's/[0-9]{10,}/??/g' ``
* La passarelle "Mautrix-Telegram" est basé sur le projet [telegram daemon](https://gitlab.com/telegramd/telegramd).
* Documentation de YunoHost : Si une documentation plus spécifique est nécessaire, n'hésitez pas à y contribuer.

## Résolution de problèmes

* Vérifier l'orthographe du nom du bot !
* Pour les serveurs lents, il peut être nécessaire de lancer ``systemctl edit mautrix_telegram.service`` (également pour `coturn.service` et `coturn-synapse.service`) et d'insérer
```
[Service]
ExecStartPre=/bin/sleep 90
```
de telle sorte qu'il soit assuré que synapse est en cours d'exécution avant que la passerelle n'essaie de se connecter.
(Si cela a fonctionné après l'installation mais s'est arrêté après un redémarrage, c'est probablement cela).