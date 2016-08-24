#!/usr/bin/env bash
set -e

echo "Setting user background..."
echo "gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/xebia.png" >> .profile
