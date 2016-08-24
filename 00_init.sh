#!/usr/bin/env bash
set -e

echo "Setting locale..."
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

sudo kill -9 $(lsof -t /var/lib/dpkg/lock) || true
sudo apt-get update
sudo apt-get install -y git

echo "Installing required packages..."
sudo apt-get install -y -q python-software-properties build-essential autotools-dev automake pkg-config ant zsh expect

echo "Configuring ZSH..."
sudo apt-get install -y zsh
if [ ! -d ~vagrant/.oh-my-zsh ]; then
  git clone https://github.com/robbyrussell/oh-my-zsh.git ~vagrant/.oh-my-zsh
fi

chsh -s /bin/zsh vagrant

echo "Updating apt-get repos..."

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# This will also call apt-get update
curl -sL https://deb.nodesource.com/setup_4.x | sudo bash -

