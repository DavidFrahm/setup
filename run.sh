#!/bin/sh

# Minimal script to bootstrap the main setup script

NOW=`date '+%Y%m%d-%H%M%S'`
LOGFILE="~/setup-$NOW.log"
echo "View log in $LOGFILE"
bin=$(dirname -- "$0")
$bin/setup.sh 2>&1 | tee ~/setup-$NOW.log
