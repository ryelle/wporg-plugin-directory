#!/bin/bash

npm install
composer install

# Get the ratings plugin (from theme directory repo).
curl -LO https://raw.githubusercontent.com/WordPress/wporg-theme-directory/trunk/source/wp-content/plugins/wporg-ratings/wporg-ratings.php --output-dir "./source/wp-content/plugins/wporg-ratings"

TEXTDOMAIN=wporg-plugins composer exec update-configs

# Get the locales table (from Learn repo).
curl -LO https://raw.githubusercontent.com/WordPress/Learn/trunk/.wp-env/wporg_locales.sql --output-dir "./env/data"

npm run build:theme
