#!/bin/bash

git co init-code

svn export http://meta.svn.wordpress.org/sites/trunk/wordpress.org/public_html/wp-content/themes/pub/wporg-plugins-2024/ source/wp-content/themes/wporg-plugins-2024/ --force
rm source/wp-content/themes/wporg-plugins-2024/.eslintignore source/wp-content/themes/wporg-plugins-2024/yarn.lock

svn export http://meta.svn.wordpress.org/sites/trunk/wordpress.org/public_html/wp-content/plugins/plugin-directory/ source/wp-content/plugins/plugin-directory/ --force

git add *
git commit --amend --no-edit

git co trunk

# This might fail, and need to be done via the UI.
git rebase init-code
