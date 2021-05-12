#!/bin/sh

getent group messagebus >/dev/null || groupadd -g 18 messagebus
getent passwd messagebus >/dev/null || useradd -c "D-Bus Message Daemon User" -d /var/run/dbus -u 18 -g messagebus -s /bin/false messagebus
