#!/bin/bash
# Automatically generated script by
# vagrantbox/doc/src/vagrant/src-vagrant/deb2sh.py
# where vagrantbox is the directory arising from
# git clone git@github.com:hplgit/vagrantbox.git

# The script is based on packages listed in debpkg_rich.txt.

set -x  # make sure each command is printed in the terminal

function apt_install {
  sudo apt-get -y install $1
  if [ $? -ne 0 ]; then
    echo "could not install $1 - abort"
    exit 1
  fi
}

function pip_install {
  sudo pip install --upgrade "$@"
  if [ $? -ne 0 ]; then
    echo "could not install $p - abort"
    exit 1
  fi
}

sudo apt-get update --fix-missing

# Install downloaded source code in ~/srclib
# cd
if [ ! -d srclib ]; then mkdir srclib; fi

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
apt_install cmake

# Numerical libraries
apt_install libatlas-base-dev
apt_install libsuitesparse-dev

# Software development
apt_install pkg-config
apt_install flex
apt_install bison
apt_install libboost-dev
apt_install libboost-filesystem-dev
apt_install libboost-iostreams-dev
apt_install libboost-program-options-dev
apt_install libboost-thread-dev
apt_install libboost-math-dev
apt_install libboost-timer-dev
apt_install libboost-chrono-dev
apt_install libcln-dev
apt_install libmpfr-dev
apt_install libcppunit-dev
apt_install libopenmpi-dev
apt_install openmpi-bin
apt_install libptscotch-dev
apt_install libxml2-dev
apt_install libhwloc-dev
apt_install libhdf5-openmpi-dev
apt_install libeigen3-dev
apt_install libcgal-dev
apt_install libpcre3-dev
apt_install gccxml

# SWIG 3.0.0
apt_install wget
cd srclib
wget -N http://downloads.sourceforge.net/swig/swig-3.0.0.tar.gz
tar zxf swig-3.0.0.tar.gz
cd swig-3.0.0
./configure
make
sudo make install
cd ..

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
apt_install python-setuptools
apt_install python-dev
# Matplotlib requires libfreetype-dev libpng-dev
# (otherwise pip install matplotlib does not work)
apt_install libfreetype6-dev
apt_install libpng-dev
# ScientificPython does not work with numpy version >= 1.9
# (FEniCS depends on ScientificPython, SciTools too)
#pip install numpy
# ScientificPython needs numpy 1.8
# Alternative: patch newer numpy with the oldnumeric and numarray modules
#pip install numpy==1.8.2
pip_install numpy --upgrade
pip_install sympy --upgrade
pip_install cython --upgrade
pip_install numexpr --upgrade
#pip install pyparsing
#pip install matplotlib
apt_install python-matplotlib
#ipython-notebook  # too old version in debian
pip_install ipython --upgrade
pip_install tornado --upgrade
pip_install pyzmq --upgrade
pip_install jsonschema
pip_install scipy --upgrade
pip_install nose
pip_install pytest
pip_install sphinx --upgrade
pip_install flask --upgrade
pip_install Flask-WTF --upgrade
pip_install django
pip_install progressbar
pip_install mako
pip_install flake8
pip_install pylint
pip_install dill
apt_install pydb
apt_install python-profiler
pip_install psutil
pip_install memory_profiler --upgrade
pip_install line_profiler --upgrade
apt_install python-dev
apt_install spyder
apt_install python-opengl
apt_install python-pygame
apt_install python-pdftools
apt_install python-qt4
apt_install python-gtk2-dev
apt_install libqt4-dev
apt_install python-qt4-dev
apt_install python-pmw
apt_install python-traits
apt_install python-traitsui
apt_install python-enthoughtbase
apt_install python-pyface
apt_install pype
apt_install python-tagpy
apt_install python-ply
apt_install python-netcdf

# Gnuplot (use qt backend)
apt_install gnuplot
apt_install gnuplot-doc
apt_install gnuplot-qt
apt_install python-gnuplot
apt_install python-wxgtk2.8
apt_install libwxgtk2.8-dev
apt_install liblualib50-dev
#gnuplot-x11

# Pytave
#$ add-apt-repository ppa:johannr/test-ppa
#$ apt-get update
#python-pytave

# Plotting and visualization programs
apt_install grace
apt_install dx
apt_install dx-doc
apt_install tcl-vtk
apt_install python-vtk
apt_install libvtk5-dev
pip_install mayavi --upgrade

# "Matlab"
apt_install octave
apt_install octave-splines
apt_install octave-symbolic
apt_install octave-specfun
apt_install octave-optim
apt_install octave-odepkg
apt_install octave-audio

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

# LaTeX
apt_install texinfo
# These lines are only necessary for Ubuntu 12.04 to install texlive 2012
# (let if tests be on one line)
#$ ubuntu_version=`lsb_release -r | awk '{print $2}'`
#$ if [ $ubuntu_version = "12.04" ]; then sudo add-apt-repository -y ppa:texlive-backports/ppa; sudo apt-get update; fi
apt_install texlive
apt_install latex-beamer
apt_install texlive-extra-utils
apt_install texlive-latex-extra
apt_install texlive-latex-recommended
apt_install texlive-math-extra
apt_install texlive-font-utils
apt_install texlive-humanities
apt_install latexdiff
apt_install auctex

# For making animations
apt_install ffmpeg
apt_install libav-tools
# libavcodec-extra has extension 54 or 55, etc., depending on the Ubuntu version
# do sudo apt-cache search libavcodec-extra to see the current number
apt_install libavcodec-extra-56
apt_install libx264-dev

# Players
apt_install mplayer
apt_install gnome-mplayer
#mencoder # not in Ubuntu any longer
apt_install totem
apt_install totem-plugins
apt_install totem-mozilla
apt_install vlc
apt_install browser-plugin-vlc
apt_install gxine
apt_install xine-plugin
apt_install libxine2-dev
apt_install libxine2-all-plugins
apt_install gxineplugin
apt_install libxine2-ffmpeg
apt_install swfdec-gnome
# FIXME: this package requires multiverse to be enabled in sources.list
#flashplugin-installer

# Misc
apt_install unity-tweak-tool
apt_install pandoc
apt_install konsole
apt_install gnome-terminal
apt_install libreoffice
apt_install unoconv
apt_install libreoffice-dmaths
apt_install libbz2-dev
apt_install libncurses5-dev
apt_install curl
apt_install a2ps
apt_install wdiff
apt_install jhead
apt_install apt-file
apt_install apturl
apt_install libssl-dev
apt_install openssh-server
apt_install meld
apt_install fldiff
apt_install diffpdf
apt_install kdiff3
#preprocess
pip_install -e svn+http://preprocess.googlecode.com/svn/trunk#egg=preprocess

# Support for Norwegian
apt_install language-pack-nb-base


# Download source code and install in srclib subdirectory

# SciTools must be installed from source
cd srclib
git clone https://github.com/hplgit/scitools.git
cd scitools
sudo python setup.py install
cd ../..
# Alternative: pip install -e git+https://github.com/hplgit/scitools.git#egg=scitools

pip_install -e git+https://github.com/hplgit/odespy.git#egg=odespy

# Does not work: pip install -e hg+https://bitbucket.org/khinsen/scientificpython#egg=scientificpython
# Do manual install instead
cd srclib
hg clone https://bitbucket.org/khinsen/scientificpython
cd scientificpython
sudo python setup.py install
cd ../..

#$ cd srclib
#$ curl -O https://github.com/hplgit/hplgit.github.com/raw/master/software/gnuplot-py-1.8.tar.gz
#$ tar xvf gnuplot-py-1.8.tar.gz
#$ cd gnuplot-py-1.8
#$ sudo python setup.py install
#$ cd ../..

# DocOnce (must clone with https since ssh keys are not present in the box)
cd srclib
git clone https://github.com/hplgit/doconce.git
if [ $? -ne 0 ]; then exit; fi
if [ -d doconce ]; then cd doconce; sudo python setup.py install; cd ../..; fi

# Install DocOnce dependencies not covered above
pip_install paver
pip_install cogapp
pip_install sphinxcontrib-paverutils
pip_install diff_match_patch
pip_install -e svn+http://preprocess.googlecode.com/svn/trunk#egg=preprocess
pip_install -e hg+https://bitbucket.org/logg/publish#egg=publish#egg=publish

pip_install -e hg+https://bitbucket.org/ecollins/cloud_sptheme#egg=cloud_sptheme
pip_install -e git+https://github.com/ryan-roemer/sphinx-bootstrap-theme#egg=sphinx-bootstrap-theme
pip_install -e hg+https://bitbucket.org/miiton/sphinxjp.themes.solarized#egg=sphinxjp.themes.solarized
pip_install -e git+https://github.com/shkumagai/sphinxjp.themes.impressjs#egg=sphinxjp.themes.impressjs

pip_install -e git+https://github.com/hplgit/pygments-doconce#egg=pygments-doconce
pip_install -e git+https://github.com/kriskda/sphinx-sagecell#egg=sphinx-sagecell
#pip install -e git+https://bitbucket.org/sanguineturtle/pygments-ipython-console#egg=pygments-ipython-console
pip_install -e git+https://bitbucket.org/hplbit/pygments-ipython-console#egg=pygments-ipython-console

# Ptex2tex
cd srclib
svn checkout http://ptex2tex.googlecode.com/svn/trunk/ ptex2tex
cd ptex2tex
sudo python setup.py install
cd latex
sh cp2texmf.sh
cd ../../..
cd ~/texmf
mktexlsr .
cd -

# mdframed.sty (in texlive, but is often needed in the newest version)
git clone https://github.com/marcodaniel/mdframed
if [ -d mdframed ]; then cd mdframed; make localinstall; cd ..; fi

# Not strictly necessary (only for creating modified reveal.js styles
# for HTML5 slides, see https://github.com/hakimel/reveal.js/#installation,
# but the installation is trickier than described on that page...)
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get -y install nodejs
# remove a conflicting install of npm that I had tried earlier
sudo apt-get update && sudo apt-get -y dist-upgrade
sudo npm install -g grunt grunt-cli grunt-contrib-clean grunt-replace grunt-contrib-concat grunt-contrib-watch grunt-contrib-jasmine grunt-contrib-connect grunt-saucelabs grunt-gitinfo

# Clean up
sudo mv -f src/* srclib
sudo rm -rf src build
sudo find srclib -name build -exec rm -rf {} \;
cd
sudo rm -rf .matplotlib
mkdir .matplotlib
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get -y autoremove

# Install FEniCS manually via apt-get, run fenics_apt.sh,
# or via full compile with Dorsal, run fenics_dorsal.sh
echo "Everything is successfully installed!"
