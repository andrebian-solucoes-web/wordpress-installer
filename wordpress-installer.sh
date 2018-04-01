#!/usr/bin/env bash

echo ""
echo -e "\e[033mWelcome to Andrebian's WordPress Installer\e[0m"
echo ""

echo -e "\e[033mStep 1: Downloading WordPress in its latest version\e[0m"
php -r "copy('https://wordpress.org/latest.zip', 'wordpress.zip');"
echo -e "\e[032m - Ok\e[0m"
echo ""

echo -e "\e[033mStep 2: Unzipping downloaded WordPress\e[0m"
unzip -q wordpress.zip
echo -e "\e[032m - Ok\e[0m"
echo ""

echo -e "\e[033mStep 3: Placing files\e[0m"
cp -rf wordpress/* .
echo -e "\e[032m - Ok\e[0m"
echo ""

echo -e "\e[033mStep 4: Removing temporary files\e[0m"
rm -rf wordpress wordpress.zip
echo -e "\e[032m - Ok\e[0m"
echo ""

echo -e "\e[033mStep 5: Adding .gitignore\e[0m"
echo ".idea
*.log
wp-config.php
wp-content/advanced-cache.php
wp-content/backup-db/
wp-content/backups/
wp-content/blogs.dir/
wp-content/cache/
wp-content/upgrade/
wp-content/uploads/
wp-content/themes/twenty*
wp-content/wp-cache-config.php
wp-content/plugins/hello.php

/license.txt
/readme.html
/sitemap.xml
/sitemap.xml.gz
.idea
.ftpquota
error_log
/vendor
# ignore specific themes
wp-content/themes/twenty*/" > .gitignore
echo -e "\e[032m - Ok\e[0m"
echo ""

echo -e "\e[033mStep 6: Starting git repository\e[0m"
git init
echo -e "\e[032m - Ok\e[0m"
echo ""

echo -e "\e[033mStep 7: First commit\e[0m"
git add .; git commit -m "Project started with Andrebian's WordPress Installer"
echo -e "\e[032m - Ok\e[0m"
echo ""

echo -e "\e[033mIt's done, let's work!\e[0m"
echo ""
