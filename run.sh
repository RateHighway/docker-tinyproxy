#!/bin/bash

ln -s -f /dev/stdout /var/log/tinyproxy/tinyproxy.log
chown tinyproxy:tinyproxy /var/log/tinyproxy/tinyproxy.log

/usr/sbin/tinyproxy -d
