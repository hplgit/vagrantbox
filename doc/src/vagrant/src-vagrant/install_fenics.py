#!/usr/bin/env python
# Automatically generated script by
# vagrantbox/doc/src/vagrant/src-vagrant/deb2sh.py
# where vagrantbox is the directory arising from
# git clone git@github.com:hplgit/vagrantbox.git

# The script is based on packages listed in debpkg_fenics.txt.

import subprocess, sys

def system(cmd):
    """Run system command cmd."""
    print cmd
    try:
        output = subprocess.check_output(cmd, shell=True,
                                         stderr=subprocess.STDOUT)
    except subprocess.CalledProcessError as e:
       print 'Command\n  %s\nfailed.' % cmd
       print 'Return code:', e.returncode
       print e.output
       sys.exit(1)

system('sudo apt-get update --fix-missing')
# Run debpkg.txt or debpkg_minimal.txt or debpkg_rich.txt to
# generate install scripts, run these to first to bring in basic packages

# Install FEniCS manually because of the dist-upgrade
# FEniCS
cmd = """
sudo add-apt-repository ppa:fenics-packages/fenics
sudo apt-get update
sudo apt-get install fenics
"""
system(cmd)
system('sudo apt-get -y install fenics')
#$ sudo apt-get dist-upgrade
# If you encounter problems with GRUB, just ignore it and continue.
print 'Everything is successfully installed!'
