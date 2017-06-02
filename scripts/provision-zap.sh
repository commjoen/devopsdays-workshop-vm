#!/usr/bin/env bash
set -e

echo "Provisioning ZAP..."
cd Documents
mkdir tools
cd tools
wget https://github.com/zaproxy/zaproxy/releases/download/2.6.0/ZAP_2.6.0_Linux.tar.gz
tar xvfx ZAP_2.6.0_Linux.tar.gz
rm -rf ZAP_2.6.0_Linux.tar.gz
echo "export PATH=\"/home/vagrant/Documents/tools/ZAP_2.6.0;$PATH\"" >> /home/vagrant/.zshrc
