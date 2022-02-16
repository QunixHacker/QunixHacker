#! /usr/bin/bash

# WARNING overcommit_memory is set to 0!
# Background save may fail under low memory condition.
# To fix this issue add 'vm.overcommit_memory = 1' to /etc/sysctl.conf and then reboot or
# run the command 'sysctl vm.overcommit_memory=1' for this to take effect.

echo "vm.overcommit_memory=1" >> /etc/sysctl.conf
sysctl -p
# tmp
# sysctl vm.overcommit_memory=1

# WARNING: The TCP backlog setting of 511 cannot be enforced
# because /proc/sys/net/core/somaxconn is set to the lower value of 128.

# cat /proc/sys/net/core/somaxconn
# 128

echo 511 > /proc/sys/net/core/somaxconn