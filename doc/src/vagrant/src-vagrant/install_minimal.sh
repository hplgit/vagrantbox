#!/bin/bash
# Automatically generated script. Based on debpkg_minimal.txt.

function apt_install {
  sudo apt-get -y install $1
  if [ $? -ne 0 ]; then
    echo "could not install $1 - abort"
    exit 1
  fi
}

function pip_install {
  for p in $@; do
    sudo pip install $p
    if [ $? -ne 0 ]; then
      echo "could not install $p - abort"
      exit 1
    fi
  done
}

sudo apt-get update

# Minimal installation for a Python ecosystem
# for scientific computing

# The machine needs to install vagrant
apt_install vagrant

# Editors
apt_install emacs
apt_install python-mode
apt_install gedit
apt_install vim
apt_install ispell

# Compilers
apt_install gcc
apt_install g++
apt_install gawk
apt_install f2c
apt_install gfortran
apt_install autoconf
apt_install automake
apt_install autotools-dev

# Numerical libraries
apt_install libatlas-base-dev
apt_install libsuitesparse-dev

# Version control systems
apt_install subversion
apt_install mercurial
apt_install cvs
apt_install git
apt_install gitk
apt_install bzr

# Python
apt_install idle
apt_install python-pip
apt_install python-dev
# Matplotlib requires libfreetype-dev libpng-dev
# (otherwise pip install matplotlib does not work)
apt_install libfreetype6-dev
apt_install libpng-dev
pip_install numpy
pip_install sympy
pip_install matplotlib
pip_install scipy
pip_install ipython
pip_install nose
pip_install sphinx # installs pygments and docutils too
apt_install pydb
apt_install python-profiler
apt_install python-dev

# Gnuplot
apt_install gnuplot
apt_install gnuplot-doc
apt_install gnuplot-x11
apt_install liblualib50-dev

# Drawing programs
apt_install inkscape
apt_install xfig
apt_install xfig-doc
apt_install transfig
apt_install fig2ps

# Image manipulation
apt_install imagemagick
apt_install netpbm
apt_install mjpegtools
apt_install pdftk
apt_install giftrans
apt_install gv
apt_install evince
apt_install smpeg-plaympeg
apt_install mplayer
apt_install totem
apt_install ffmpeg
apt_install libav-tools

# LaTeX
apt_install texinfo
apt_install texlive

# Misc
apt_install gnome-terminal
apt_install libreoffice
apt_install unoconv
apt_install libreoffice-dmaths

apt_install libbz2-dev
apt_install libncurses5-dev
apt_install curl
apt_install a2ps
apt_install wdiff

# Support for Norwegian
apt_install language-pack-nb-base

# SciTools must be installed from source
if [ $? -ne 0 ]; then echo "command failed"; exit 1; fi

# Alternative: pip install -e hg+https://code.google.com/p/scitools#egg=scitools

# Does not work: pip install -e hg+https://bitbucket.org/khinsen/scientificpython#egg=scientificpython
# Do manual install instead
if [ $? -ne 0 ]; then echo "command failed"; exit 1; fi


echo "Everything is successfully installed!"
