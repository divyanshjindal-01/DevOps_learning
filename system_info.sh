#!/bin/bash

# HEADER 
echo "<<<< SYSTEM INFO <<<<"
echo "created on $(date) ";

#basic informations

echo "hostname: $(hostname)"
echo "username: $(whoami)"
echo "iptime: $(uptime -p)"

#memory

echo "memory used";
df -h;
echo "memory available:";
free -h;

#model name:

lscpu | grep "model name"

#network check

echo "checking network "
if ping -c 2 8.8.8.8 > /dev/null 2>&1
then
	echo "network available";
else
	echo "req denied";
fi
