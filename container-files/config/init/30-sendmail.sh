#!/bin/sh

#
#  Configure SendMail
#

# This script will be placed in /config/init/ and run when container starts.

set -e

export TERM=dumb

line=$(tail -n1 /etc/hosts)
line2=$(echo $line | awk '{print $2}')
echo "$line $line2.localdomain" >> /etc/hosts
