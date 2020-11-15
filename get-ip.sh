#!/bin/bash
#
# Gets the device's ip address. Assumes that the NIC interface is eth0.

INTERFACE=eth0

ip addr show $INTERFACE | grep -m 1 inet | awk '{print $2}' | cut -d / -f 1
