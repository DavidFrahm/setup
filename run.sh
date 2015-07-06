#!/bin/sh

# Minimal script to bootstrap the main setup script

# TODO: Also could run this from GitHub repo, as in thoughtbot/laptop README
# curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac
# less mac
# sh mac 2>&1 | tee ~/laptop.log

bin=$(dirname -- "$0")
$bin/setup.sh 2>&1 | tee ~/setup.log
