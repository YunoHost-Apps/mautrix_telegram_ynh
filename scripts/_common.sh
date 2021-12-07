#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
# HACK zlib1g-dev libjpeg-dev (libwebp-dev optional but necessary for stickers) are necessary to compile / install pillow
pkg_dependencies="postgresql python3 zlib1g-dev libjpeg-dev libwebp-dev python3-venv libpq-dev"

#=================================================
# PERSONAL HELPERS
#=================================================

write_bridge_config () {
	domain="https://$domain"
	if [ "$botusers" = "local" ]
	then
		botusers="$server_name"
	fi
	verify_server_ssl_certificates="true"
	matrix_server_supports_asmux="false"
	log_filename="/var/log/$app/$app.log"
	log_level="error"
	ynh_add_config --template="config.yaml" --destination="$mautrix_config_path"
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
