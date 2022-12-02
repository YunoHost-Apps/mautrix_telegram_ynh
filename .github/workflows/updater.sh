#!/bin/bash

#=================================================
# PACKAGE UPDATING HELPER
#=================================================

# This script is meant to be run by GitHub Actions
# The YunoHost-Apps organisation offers a template Action to run this script periodically
# Since each app is different, maintainers can adapt its contents so as to perform
# automatic actions when a new upstream release is detected.

#=================================================
# FETCHING LATEST RELEASE AND ITS ASSETS
#=================================================

# Fetching information
current_version=$(cat manifest.json | jq -j '.version|split("~")[0]')
repo=$(cat manifest.json | jq -j '.upstream.code|split("https://github.com/")[1]')
# Some jq magic is needed, because the latest upstream release is not always the latest version (e.g. security patches for older versions)
version=$(curl --silent "https://api.github.com/repos/$repo/releases" | jq -r '.[] | select( .prerelease != true ) | .tag_name' | sort -V | tail -1)
assets="https://github.com/$repo/archive/refs/tags/$version.tar.gz"

# Later down the script, we assume the version has only digits and dots
# Sometimes the release name starts with a "v", so let's filter it out.
# You may need more tweaks here if the upstream repository has different naming conventions.
if [[ ${version:0:1} == "v" || ${version:0:1} == "V" ]]; then
	version=${version:1}
fi

# Setting up the environment variables
echo "Current version: $current_version"
echo "Latest release from upstream: $version"
echo "VERSION=$version" >> $GITHUB_ENV
echo "REPO=$repo" >> $GITHUB_ENV
# For the time being, let's assume the script will fail
echo "PROCEED=false" >> $GITHUB_ENV

# Proceed only if the retrieved version is greater than the current one


#=================================================
# UPDATE SOURCE FILES
#=================================================

# Let's download source tarball
asset_url=$assets

echo "Handling asset at $asset_url"

src="app"

# Create the temporary directory
tempdir="$(mktemp -d)"

# Download sources and calculate checksum
filename=${asset_url##*/}
curl --silent -4 -L $asset_url -o "$tempdir/$filename"
checksum=$(sha256sum "$tempdir/$filename" | head -c 64)

# Get extension
if [[ $filename == *.tar.gz ]]; then
  extension=tar.gz
else
  extension=${filename##*.}
fi

# Rewrite source file
cat <<EOT > conf/$src.src
SOURCE_URL=$asset_url
SOURCE_SUM=$checksum
SOURCE_SUM_PRG=sha256sum
SOURCE_FORMAT=$extension
SOURCE_IN_SUBDIR=true
SOURCE_FILENAME=mautrix-telegram.tar.gz
SOURCE_EXTRACT=false
EOT
echo "... conf/$src.src updated"

#=================================================
# SPECIFIC UPDATE STEPS
#=================================================

# Any action on the app's source code can be done.
# The GitHub Action workflow takes care of committing all changes after this script ends.

echo "Update latest version of conf/config.yaml"
# Update the config.yaml with the latest version of it and add vars that will be replaced
configFilePath="conf/config.yaml"
newConfigFilePath=$(tar -tf "$tempdir/$filename" |  grep 'example-config.yaml')
tar -xf "$tempdir/$filename" --directory "$tempdir" "$newConfigFilePath"
mv "$tempdir/$newConfigFilePath" "$configFilePath"

# Replace default values with vars that will be replaced on the install script
yq -i '.homeserver.address = "https://__DOMAIN__"' $configFilePath
yq -i '.homeserver.domain = "__SERVER_NAME__"' $configFilePath
yq -i '.appservice.address = "http://localhost:__PORT__"' $configFilePath
yq -i '.appservice.port = "__PORT__"' $configFilePath
yq -i '.appservice.database = "postgres://__DB_USER__:__DB_PWD__@localhost:5432/__DB_NAME__"' $configFilePath
yq -i '.appservice.id = "__APPSERVICEID__"' $configFilePath
yq -i '.appservice.bot_username = "__BOTNAME__"' $configFilePath
yq -i '.appservice.as_token = "__AS_TOKEN__" | .appservice.as_token style=""' $configFilePath
yq -i '.appservice.hs_token = "__HS_TOKEN__" | .appservice.hs_token style=""' $configFilePath
yq -i '.bridge.encryption.allow = "__IS_ENCRYPTION_ENABLED__"' $configFilePath
yq -i '.bridge.encryption.default = "__IS_ENCRYPTION_ENABLED__"' $configFilePath
yq -i '.bridge.encryption.require = "__IS_ENCRYPTION_ENABLED__"' $configFilePath
yq -i 'with(.bridge.permissions ; . = { "*": "relaybot", "__BOTUSERS__": "puppeting", "__BOTADMIN__": "admin" } | ... style="double")' $configFilePath
yq -i '.telegram.api_id = "__APIID__"' $configFilePath
yq -i '.telegram.api_hash = "__APIHASH__"' $configFilePath
yq -i '.telegram.bot_token = "__BOTTOKEN__"' $configFilePath
yq -i '.logging.handlers.file.filename = "/var/log/__APP__/__APP__.log"' $configFilePath

# Keep some default options turned off
yq -i '.appservice.database_opts = {}' $configFilePath
yq -i '.appservice.provisioning.enabled = false' $configFilePath
yq -i '.appservice.ephemeral_events = false' $configFilePath
yq -i '.bridge.sync_channel_members = true' $configFilePath
yq -i '.bridge.startup_sync = true' $configFilePath
yq -i '.bridge.public_portals = true' $configFilePath
yq -i '.bridge.sync_with_custom_puppets = true' $configFilePath
yq -i '.bridge.relaybot.whitelist = {}' $configFilePath
yq -i '.logging.loggers.mau.level = "INFO"' $configFilePath
yq -i '.logging.root.level = "INFO"' $configFilePath

#=================================================
# GENERIC FINALIZATION
#=================================================

# Replace new version in manifest
echo "$(jq -s --indent 4 ".[] | .version = \"$version~ynh1\"" manifest.json)" > manifest.json

# Delete temporary directory
rm -rf $tempdir

# No need to update the README, yunohost-bot takes care of it

# The Action will proceed only if the PROCEED environment variable is set to true
echo "PROCEED=true" >> $GITHUB_ENV
exit 0
