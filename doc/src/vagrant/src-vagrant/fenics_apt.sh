# This script runs dist-upgrade, which is better done manually because
# of potential user interrupts.

# Install FEniCS via Ubuntu/Debian packages
sudo add-apt-repository -y ppa:fenics-packages/fenics
sudo apt-get update
sudo apt-get install -y fenics
#$ sudo apt-get dist-upgrade   # run manually
# If you encounter problems with GRUB, just ignore it and continue.
