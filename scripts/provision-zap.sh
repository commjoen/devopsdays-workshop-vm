#!/usr/bin/env bash
set -e

echo "Provisioning ZAP..."
cd conference-day
cd security-testing
cd tools
wget –quiet https://github.com/zaproxy/zaproxy/releases/download/2.6.0/ZAP_2.6.0_Linux.tar.gz || exit 0
tar xvfx ZAP_2.6.0_Linux.tar.gz
rm -rf ZAP_2.6.0_Linux.tar.gz
echo "export PATH=\"/home/vagrant/conference-day/security-testing/tools/ZAP_2.6.0;$PATH\"" >> /home/vagrant/.zshrc
