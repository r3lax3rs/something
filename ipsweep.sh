#!bin/bash

if [ "$1" == "" ]
then
echo "You forgot an IP address!"
echo "Example Syntax: ./ipsweep.sh 192.168.4"
else

for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | awk '{print $4}' | tr -d ":" & #NOTE: when using & it will allow multiple instances at ones; when you replace it with ; it will do one per time
done
fi
# How to use: ./ipsweep.sh 192.168.x > ips.txt
