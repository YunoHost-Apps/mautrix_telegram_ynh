#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
# HACK zlib1g-dev libjpeg-dev (libwebp-dev optional but necessary for stickers) are necessary to compile / install pillow
pkg_dependencies="postgresql python3 zlib1g-dev libjpeg-dev libwebp-dev"

#=================================================
# PERSONAL HELPERS
#=================================================

write_bridge_config () {
	domain="https://$domain"
	if [ "$botusers" = "local" ]
	then
		# ynh_replace_string --match_string=__BOTUSERS__ --replace_string=$server_name --target_file="$mautrix_config_path"
		botusers="$server_name"
	# else
	# ynh_replace_string --match_string=__BOTUSERS__ --replace_string=$botusers --target_file="$mautrix_config_path"
	fi
	# ynh_replace_string --match_string=__VERIFY_SERVER_SSL_CERTIFICATES__ --replace_string=true --target_file="$mautrix_config_path"
	verify_server_ssl_certificates="true"
	# ynh_replace_string --match_string=__MATRIX_SERVER_SUPPORTS_ASMUX__ --replace_string=false --target_file="$mautrix_config_path"
	matrix_server_supports_asmux="false"
	# ynh_replace_string --match_string=__LOG_FILENAME__ --replace_string="/var/log/$app/$app.log" --target_file="$mautrix_config_path"
	log_filename="/var/log/$app/$app.log"
	# TODO rename these settings
	# ynh_replace_string --match_string=__TELEGRAM_API_ID__ --replace_string=$apiid --target_file="$mautrix_config_path"
	# ynh_replace_string --match_string=__TELEGRAM_API_HASH__ --replace_string=$apihash --target_file="$mautrix_config_path"
	# ynh_replace_string --match_string=__TELEGRAM_BOT_TOKEN__ --replace_string=$bottoken --target_file="$mautrix_config_path"
	telegram_api_id="$apiid"
	telegram_api_hash="$apihash"
	telegram_bot_token="$bottoken"
	# ynh_replace_string --match_string=__LOG_LEVEL__ --replace_string="error" --target_file="$mautrix_config_path"
	log_level="error"
	ynh_add_config --template="config.yaml" --destination="$mautrix_config_path"
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
