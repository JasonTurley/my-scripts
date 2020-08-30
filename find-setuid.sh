#!/bin/bash

# Finds all files the user can run that have the setuid bit enabled. This is a cheesy work-around
# for when you do not have permission to run sudo -l

find / -u=s -type f 2>/dev/null 
