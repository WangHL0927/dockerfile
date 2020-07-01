#!/usr/bin/env bash

# uninstall packages
apt-get purge -y gcc python3-dev repo

## clean
apt-get clean
apt-get autoremove

