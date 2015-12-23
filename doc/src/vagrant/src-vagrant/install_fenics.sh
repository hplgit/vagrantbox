#!/bin/bash
# Automatically generated script by
# vagrantbox/doc/src/vagrant/src-vagrant/deb2sh.py
# where vagrantbox is the directory arising from
# git clone git@github.com:hplgit/vagrantbox.git

# The script is based on packages listed in debpkg_fenics.txt.

set -x  # make sure each command is printed in the terminal

function apt_install {
  sudo apt-get -y install $1
  if [ $? -ne 0 ]; then
    echo "could not install $1 - abort"
    exit 1
  fi
}

function pip_install {
  sudo pip install "$@"
  if [ $? -ne 0 ]; then
    echo "could not install $p - abort"
    exit 1
  fi
}

sudo apt-get update --fix-missing

# Run debpkg.txt or debpkg_minimal.txt or debpkg_rich.txt to
# generate install scripts, run these to first to bring in basic packages

# Install FEniCS manually because of the dist-upgrade
# FEniCS
sudo add-apt-repository ppa:fenics-packages/fenics
sudo apt-get update
sudo apt-get install fenics
apt_install fenics
#$ sudo apt-get dist-upgrade
# If you encounter problems with GRUB, just ignore it and continue.
echo "Everything is successfully installed!"
