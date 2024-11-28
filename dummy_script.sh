#!/bin/bash

echo "This script is running on $(uname -s)"

if [ -f /etc/os-release ]; then
    . /etc/os-release
    echo "Linux distribution: $NAME $VERSION"
elif type lsb_release >/dev/null 2>&1; then
    echo "Linux distribution: $(lsb_release -si) $(lsb_release -sr)"
elif [ -f /etc/lsb-release ]; then
    . /etc/lsb-release
    echo "Linux distribution: $DISTRIB_ID $DISTRIB_RELEASE"
elif [ -f /etc/debian_version ]; then
    echo "Linux distribution: Debian $(cat /etc/debian_version)"
else
    echo "Linux distribution: Unknown"
fi