#!/bin/bash

VAGRANT_DIR="/vagrant"

# Branding...
cat "$VAGRANT_DIR/chef/shell/vwd.txt"

# Check for updates.
echo "Checking for updates..."
apt-get update &> /dev/null

#Install ruby
echo "Checking for ruby and installing if it's missing..."
apt-get install build-essential ruby1.9.1-dev --no-upgrade --yes &> /dev/null

# Upgrade Chef.
echo "Updating Chef to 11.12.4 version. This may take a few minutes..."
gem install chef --version 11.12.4 --no-rdoc --no-ri --conservative &> /dev/null
