#!/usr/bin/env bash
set -e

sudo docker pull jenkins
sudo docker pull spectolabs/hoverfly

sudo docker pull danielbryantuk/djshopfront
sudo docker pull danielbryantuk/djproductcatalogue
sudo docker pull danielbryantuk/djstockmanager
sudo docker pull benjihooper/djshopfront-hoverfly
