#!/usr/bin/env bash
set -e

echo "Creating bin dir in HOME and updating PATH..."
mkdir -p $HOME/bin
echo "PATH=${PATH}:/home/vagrant/bin" >> $HOME/.pam_environment
. $HOME/.pam_environment


