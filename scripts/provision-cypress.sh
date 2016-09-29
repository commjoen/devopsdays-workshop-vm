#!/usr/bin/env bash
set -e

echo "Provisioning Cypress..."
sudo npm install -g cypress-cli
cypress install

echo "Provisioning cypress-example-todomvc..."
mkdir cypress-workshop
cd cypress-workshop
git clone https://github.com/cypress-io/cypress-example-todomvc.git
cd cypress-example-todomvc
npm install