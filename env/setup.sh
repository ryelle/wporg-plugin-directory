#!/bin/bash

root=$( dirname $( wp config path ) )

# Set up Locales.
wp db import "${root}/env/data/wporg_locales.sql"

wp theme activate wporg-plugins-2024

wp rewrite structure '/%postname%/'
wp rewrite flush --hard

wp option update blogname "Plugin Directory"
wp option update blogdescription "Plugins extend and expand the functionality of WordPress."

wp import "${root}/env/data/wporg-plugins.xml" --authors=create
