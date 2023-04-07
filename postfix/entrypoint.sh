#!/bin/bash

postfix start
cp /etc/resolv.conf /var/spool/postfix/etc/resolv.conf
postfix reload

# keep container running
tail -f /dev/null
