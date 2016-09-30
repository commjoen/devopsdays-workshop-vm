#!/usr/bin/env bash
set -e

echo "Provisioning Cypress Dependencies..."
sudo apt-get install xvfb

echo "Provisioning Cypress..."
cd conference-day
mkdir cypress-workshop
cd cypress-workshop
sudo npm install -g cypress-cli
cypress install

echo "Provisioning cypress-example-todomvc..."
git clone -b workshop https://github.com/cypress-io/cypress-example-todomvc.git
cd cypress-example-todomvc
npm install

echo "Provisioning cypress-example-phonecat..."
cd ~/conference-day/cypress-workshop
git clone -b workshop https://github.com/cypress-io/cypress-example-phonecat.git
cd cypress-example-phonecat
npm install

echo "Provisioning cypress-example-kitchensink..."
cd ~/conference-day/cypress-workshop
git clone https://github.com/cypress-io/cypress-example-kitchensink.git
cd cypress-example-kitchensink
npm install