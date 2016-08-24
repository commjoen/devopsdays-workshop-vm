#!/usr/bin/env bash
set -e

echo "Moving image to /usr/share/backgrounds"
sudo mv /home/vagrant/xebia.png /usr/share/backgrounds/xebia.png
sudo chown root:root /usr/share/backgrounds/xebia.png

echo "Setting lockscreen background..."
sudo mv /home/vagrant/10_unity_greeter_background.gschema.override /usr/share/glib-2.0/schemas/10_unity_greeter_background.gschema.override 
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/


