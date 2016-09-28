#!/usr/bin/env bash
set -e

echo "Provisioning Hoverfly..."
wget -O /home/vagrant/hoverfly https://github.com/SpectoLabs/hoverfly/releases/download/v0.8.2/hoverfly_v0.8.2_linux_amd64
echo "Just done got Hoverfly"
wget -O /home/vagrant/hoverctl https://github.com/SpectoLabs/hoverfly/releases/download/v0.8.2/hoverctl_v0.8.2_linux_amd64

echo "Just done got Hoverctl"
chmod +x /home/vagrant/hoverfly
chmod +x /home/vagrant/hoverctl
echo "Those files are chmodded"

sudo mv -f /home/vagrant/hoverfly /usr/local/share/hoverfly
sudo mv -f /home/vagrant/hoverctl /usr/local/share/hoverctl

sudo ln -sf /usr/local/share/hoverfly /usr/local/bin/hoverfly
sudo ln -sf /usr/local/share/hoverfly /usr/bin/hoverfly

sudo ln -sf /usr/local/share/hoverctl /usr/local/bin/hoverctl
sudo ln -sf /usr/local/share/hoverctl /usr/bin/hoverctl
