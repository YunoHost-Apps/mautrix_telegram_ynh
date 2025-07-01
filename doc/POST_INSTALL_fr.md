## Liste de passerelles publiques

* Demandez sur un des salons suivants: #mautrix_yunohost:matrix.fdn.fr ou #telegram:maunium.net

## Usages de la passerelle

** Notez que plusieurs comptes Telegram et Matrix peuvent être pontés, chaque compte Telegram connecté a son propre Salon d'Administration. Si plusieurs utilisateur.ice.s du Robot sont dans un même groupe Signal, seul un Salon Matrix sera créé par la passerelle. **

### Passerelle entre un utilisateur Telegram et un utilisateur Matrix

* Tout d'abord, votre utilisateur Matrix ou votre serveur Synapse doit être autorisé dans la configuration de la passerelle (voir ci-dessous).
* Ensuite, invitez le bot (par défaut @telegrambot:yoursynapse.domain) dans cette nouvelle salle d'administration du bot Mautrix-Telegram.
  * Si le bot n'accepte pas, voir la [page de résolution des problèmes] (https://docs.mau.fi/bridges/general/troubleshooting.html)
* Envoyez `!tg help` au bot dans la salle créée pour savoir comment contrôler le bot.
  Voir aussi [upstream wiki Authentication page](https://docs.mau.fi/bridges/python/telegram/authentication.html)

#### Connexion au compte Telegram

* Tapez `login` ou `login-qr` (non testé) dans la salle de gestion principale (`!tg` dans n'importe quelle salle de bridge).
* Suivre les instructions d'installation du bot
* Par défaut, seules les conversations avec des messages et des groupes très récents seront suggérées pour être reliées.
* Accepter les invitations dans les salles de chat pontées

#### Enregistrer le Bridge en tant qu'appareil primaire (non testé)

* Tapez `!tg register <phone>`, où `<phone>` est votre numéro de téléphone au format international sans espace, par exemple `!tg register +33612345678`.
* Répondez dans le bot room avec le code de vérification que vous avez reçu par SMS.
* Définissez un nom de profil avec `!tg set-profile-name <nom>`

### Double puppeting

* Connectez-vous avec `login-matrix <access token>`
* Après s'être connecté, la marionnette Matrix par défaut de votre compte Telegram devrait quitter les salles et votre compte devrait rejoindre toutes les salles dans lesquelles la marionnette se trouvait automatiquement.

### Relaybot : Créer un groupe pour que plusieurs utilisateurs de Matrix et de Telegram puissent chatter ensemble.

* Voir https://docs.mau.fi/bridges/python/telegram/relay-bot.html