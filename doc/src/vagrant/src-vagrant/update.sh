#!/bin/sh
# Update original install_*.* files to install_*_ubuntu.* files
# (after we also support anaconda).
cp install_rich.py install_rich_ubuntu.py
cp install_rich.sh install_rich_ubuntu.sh
cp install_minimal.py install_minimal_ubuntu.py
cp install_minimal.sh install_minimal_ubuntu.sh
