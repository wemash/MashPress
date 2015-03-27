#!/bin/bash

VAGRANT_DIR="/vagrant"

echo "Almost done... Creating the wordpress database if it doesn't exist."
mysql -u root -proot -e "CREATE SCHEMA IF NOT EXISTS wordpress"

VWD_IP=$(echo "$1")

echo "============================================================="
echo "Install finished! Visit http://$VWD_IP in your browser." 
echo "============================================================="

# Monkey...
cat "$VAGRANT_DIR/chef/shell/monkey.txt"
