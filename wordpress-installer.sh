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
echo "/*

!wp-content/

# ignore all files starting with .
.*

# track this file .gitignore (i.e. do NOT ignore it)
!.gitignore

# track .editorconfig file (i.e. do NOT ignore it)
!.editorconfig

# track readme.md in the root (i.e. do NOT ignore it)
!readme.md

# ignore all files that start with ~
~*

# ignore OS generated files
ehthumbs.db
Thumbs.db

# ignore Editor files
*.sublime-project
*.sublime-workspace
*.komodoproject

# ignore log files and databases
*.log
*.sql
*.sqlite

# ignore compiled files
*.com
*.class
*.dll
*.exe
*.o
*.so

# ignore packaged files
*.7z
*.dmg
*.gz
*.iso
*.jar
*.rar
*.tar
*.zip

wp-content/*
!wp-content/themes/
# ignore specific themes
wp-content/themes/twenty*/
wp-content/themes/index.php" > .gitignore
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
