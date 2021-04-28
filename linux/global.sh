#!/bin/bash

source common/functions.sh

print "Starting: Linux"

sudo apt-get -y update
sudo apt-get -y upgrade

print "Finished: Linux"
