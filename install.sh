#!/bin/bash

## check root
if [ "$(whoami)" != "root" ]; then
    echo "Permission denied, are you root?"
    exit 0
fi

## install
apt-get install -y xbacklight

# add cron jobs
cp ./autobrightness.sh /etc/cron.hourly/
chmod +x /etc/cron.hourly/autobrightness.sh
service cron restart

# finish
echo "installed"
exit 0
