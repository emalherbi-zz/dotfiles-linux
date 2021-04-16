#!/bin/bash

source common/functions.sh

print "Starting: Brew"

# ############################################################################ #
# ### Install
# ############################################################################ #

# Brew
if which brew &> /dev/null; then
    print_checked "homebrew"
else
    sudo apt-get install -y build-essential curl file git python-setuptools ruby linuxbrew-wrapper
fi

# Node
install_checked "node" "which node" "sudo apt install -y nodejs-legacy npm"

# SVN
install_checked "svn" "which svn" "sudo apt-get install -y subversion"

# ANT
install_checked "ant" "brew ls --versions ant" "brew install ant"

# Wifi Password
install_checked "wifi-password" "brew ls --versions wifi-password" "brew install wifi-password"

# 7zip
install_checked "7zip" "brew ls --versions p7zip" "brew install p7zip"

# Yarn
install_checked "yarn" "brew ls --versions yarn" "brew install yarn"

# ############################################################################ #
# ### Update
# ############################################################################ #

# Make sure we’re using the latest Homebrew.
brew update
print_checked "brew update"

# Upgrade any already-installed formulae.
brew upgrade
print_checked "brew update all packages"

# Remove outdated versions from the cellar.
brew cleanup
print_checked "brew remove outdated versions from the cellar"

print "Finished: Brew"
