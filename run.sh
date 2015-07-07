#!/bin/sh

# Minimal script to bootstrap the main setup script

bin=$(dirname -- "$0")
$bin/setup.sh 2>&1 | tee ~/setup.log
