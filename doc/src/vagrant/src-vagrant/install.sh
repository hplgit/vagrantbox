#!/bin/bash
# Automatically generated script. Based on debpkg.txt.

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

# Tcl/Tk
apt_install tcl8.5-dev
apt_install tk8.5-dev
apt_install blt-dev

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
pip_install flask
pip_install django
pip_install mako
apt_install pydb
apt_install python-profiler
apt_install python-dev
apt_install python-opengl
apt_install python-pygame
apt_install python-pdftools
apt_install python-docutils
apt_install python-sphinx
apt_install python-pygments
apt_install python-qt4
apt_install python-gtk2-dev
apt_install libqt4-dev
apt_install python-qt4-dev
apt_install python-pmw
apt_install python-traits
apt_install python-traitsbackendqt
apt_install python-traitsbackendwx
apt_install python-traitsgui
apt_install python-enthoughtbase
apt_install python-pyface
apt_install pype
apt_install python-tagpy
apt_install cython

# Gnuplot
apt_install gnuplot
apt_install gnuplot-doc
apt_install gnuplot-x11
apt_install liblualib50-dev

# Plotting and visualization programs
apt_install grace
apt_install dx
apt_install dx-doc
apt_install mayavi2
apt_install tcl-vtk

# Databases
apt_install libsqlite3-dev

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
# These lines are only necessary for Ubuntu 12.04 to install texlive 2012
apt_install texlive
apt_install texlive-extra-utils
apt_install texlive-latex-extra
apt_install texlive-math-extra
apt_install texlive-font-utils
apt_install latexdiff
apt_install auctex

# Misc
apt_install pandoc
apt_install konsole
apt_install gnome-terminal
apt_install libreoffice
apt_install unoconv
apt_install libreoffice-dmaths

apt_install libbz2-dev
apt_install libncurses5-dev
apt_install swig
apt_install curl
apt_install a2ps
apt_install wdiff
apt_install jhead
apt_install apt-file
apt_install apturl
apt_install libssl-dev
apt_install openssh-server
apt_install gconf-editor
apt_install meld
apt_install xxdiff
apt_install diffpdf
apt_install kdiff3

# Support for Norwegian
apt_install language-pack-nb-base

apt_install zenity
# PyZenity must be installed from source
if [ $? -ne 0 ]; then echo "command failed"; exit 1; fi


# SciTools must be installed from source
if [ $? -ne 0 ]; then echo "command failed"; exit 1; fi

# Alternative: pip install -e hg+https://code.google.com/p/scitools#egg=scitools

pip_install -e git+https://github.com/hplgit/odespy.git#egg=odespy
# Does not work: pip install -e hg+https://bitbucket.org/khinsen/scientificpython#egg=scientificpython
# Do manual install instead
if [ $? -ne 0 ]; then echo "command failed"; exit 1; fi


echo "Everything is successfully installed!"
