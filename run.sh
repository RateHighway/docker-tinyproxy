#!/bin/bash

ln -s -f /dev/stdout /var/log/tinyproxy/tinyproxy.log
chown tinyproxy:tinyproxy /var/log/tinyproxy/tinyproxy.log

exec /usr/sbin/tinyproxy -d
