#!/bin/bash
# Installs pwntools CTF framework with commands from
# https://docs.pwntools.com/en/stable/install.html

apt-get update -y
apt-get install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential -y
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade pwntools
