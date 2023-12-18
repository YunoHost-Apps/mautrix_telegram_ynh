#### Support multi-comptes

* Les utilisateurs du bot ne sont pas liés aux utilisateurs de Yunohost. Tout compte Matrix ou serveur Synapse autorisé dans la configuration du pont peut inviter/utiliser le bot.
* Le bot Telegram est un utilisateur local de Matrix-Synapse, mais accessible par fédération (synapse public ou privé).
* Plusieurs utilisateurs de Telegram et de Matrix peuvent être reliés par une passerelle, chaque utilisateur dispose de sa propre salle d'administration du bot.
* Si plusieurs utilisateurs de bot font partie d'un même groupe Telegram, une seule salle Matrix sera créée par la passerelle.
* Voir https://github.com/YunoHost-Apps/synapse_ynh#multi-users-support

#### Support multi-instance

* L'installation multi-instances devrait fonctionner. Plusieurs instances de passerelle pourraient être installées pour une instance de Matrix-Synapse afin qu'un utilisateur de Matrix puisse faire la passerelle entre plusieurs comptes Telegram.
* Plusieurs instances de passerelle pourraient être installées pour chaque instance de Matrix-Synapse afin d'en bénéficier. Mais une seule passerelle peut être utilisée par les utilisateurs de plusieurs instances de Matrix-Synapse.