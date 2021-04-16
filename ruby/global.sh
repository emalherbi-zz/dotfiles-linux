#!/bin/bash

source common/functions.sh

print "Starting: Ruby"

# RubyGems
install_checked  "gem" "which gem" "sudo apt-get install ruby ruby-dev make build-essential gcc"

# cocoapods
install_checked  "cocoapods" "which cocoapods" "sudo gem install cocoapods -n /usr/local/bin"

# Jekyll
install_checked  "jekyll" "which jekyll" "sudo gem install jekyll bundler"

# RubyGems keeps old versions of gems, so feel free to do come cleaning after updating.
sudo gem cleanup
print_checked "gem remove outdated versions of gems"

print "Finished: Ruby"
