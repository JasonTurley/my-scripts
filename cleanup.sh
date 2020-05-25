#!/bin/bash
# cleans up old packages, dependencies, and cached files.
# Source: https://askubuntu.com/questions/327951/removing-earlier-versions-of-installed-package

sudo apt-get update && sudo apt-get autoclean && sudo apt-get clean && sudo apt-get autoremove
