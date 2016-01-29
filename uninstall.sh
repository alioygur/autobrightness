#!/bin/bash

## check root
if [ "$(whoami)" != "root" ]; then
    echo "Permission denied, are you root?"
    exit 0
fi

## remove
apt-get autoremove -y xbacklight

# remove cron jobs
rm /etc/cron.hourly/autobrightness.sh
service cron restart

# finish
echo "uninstalled"
exit 0
