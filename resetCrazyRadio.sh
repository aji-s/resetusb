#!/usr/bin/bash
# Bus 003 Device 005: ID 1915:0102 Nordic Semiconductor ASA
BUS=$(lsusb | grep -i nordic | awk '{print $2}')
ID=$(lsusb | grep -i nordic | awk '{print $4}' | tr ":" " ")
echo $BUS
echo $ID
sudo /home/mach/Desktop/usbreset/usbreset /dev/bus/usb/$BUS/$ID
