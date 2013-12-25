#!/usr/bin/env python
# Automatically generated script by
# vagrantbox/doc/src/vagrant/src-vagrant/deb2sh.py
# where vagrantbox is the directory arising from
# git clone git@github.com:hplgit/vagrantbox.git

# The script is based on packages listed in debpkg_minimal.txt.

import commands, sys

def system(cmd):
    """Run system command cmd."""
    failure, output = commands.getstatusoutput(cmd)
    if failure:
       print 'Command\n  %s\nfailed.' % cmd
       print output
       sys.exit(1)

system('sudo apt-get update --fix-missing')
# Minimal installation for a Python ecosystem
# for scientific computing

# Editors
system('sudo apt-get -y install emacs')
system('sudo apt-get -y install python-mode')
system('sudo apt-get -y install gedit')
system('sudo apt-get -y install vim')
system('sudo apt-get -y install ispell')

# Compilers
system('sudo apt-get -y install gcc')
system('sudo apt-get -y install g++')
system('sudo apt-get -y install gawk')
system('sudo apt-get -y install f2c')
system('sudo apt-get -y install gfortran')
system('sudo apt-get -y install autoconf')
system('sudo apt-get -y install automake')
system('sudo apt-get -y install autotools-dev')

# Numerical libraries
system('sudo apt-get -y install libatlas-base-dev')
system('sudo apt-get -y install libsuitesparse-dev')

# Version control systems
system('sudo apt-get -y install subversion')
system('sudo apt-get -y install mercurial')
system('sudo apt-get -y install cvs')
system('sudo apt-get -y install git')
system('sudo apt-get -y install gitk')
system('sudo apt-get -y install bzr')

# Python
system('sudo apt-get -y install idle')
system('sudo apt-get -y install python-pip')
system('sudo apt-get -y install python-dev')
# Matplotlib requires libfreetype-dev libpng-dev
# (otherwise pip install matplotlib does not work)
system('sudo apt-get -y install libfreetype6-dev')
system('sudo apt-get -y install libpng-dev')
system('sudo pip install numpy')
system('sudo pip install sympy')
system('sudo pip install cython')
system('sudo apt-get -y install swig')
#pip install pyparsing
#pip install matplotlib
system('sudo apt-get -y install python-matplotlib')
system('sudo pip install scipy')
system('sudo pip install ipython')
system('sudo pip install nose')
system('sudo pip install sphinx')
system('sudo apt-get -y install pydb')
system('sudo apt-get -y install python-profiler')
system('sudo apt-get -y install python-dev')

# Gnuplot
system('sudo apt-get -y install gnuplot')
system('sudo apt-get -y install gnuplot-doc')
system('sudo apt-get -y install gnuplot-x11')
system('sudo apt-get -y install liblualib50-dev')

# Drawing programs
system('sudo apt-get -y install inkscape')
system('sudo apt-get -y install xfig')
system('sudo apt-get -y install xfig-doc')
system('sudo apt-get -y install transfig')
system('sudo apt-get -y install fig2ps')

# Image manipulation
system('sudo apt-get -y install imagemagick')
system('sudo apt-get -y install netpbm')
system('sudo apt-get -y install mjpegtools')
system('sudo apt-get -y install pdftk')
system('sudo apt-get -y install giftrans')
system('sudo apt-get -y install gv')
system('sudo apt-get -y install evince')
system('sudo apt-get -y install smpeg-plaympeg')
system('sudo apt-get -y install mplayer')
system('sudo apt-get -y install totem')
system('sudo apt-get -y install ffmpeg')
system('sudo apt-get -y install libav-tools')

# LaTeX
system('sudo apt-get -y install texinfo')
system('sudo apt-get -y install texlive')

# Misc
system('sudo apt-get -y install gnome-terminal')
system('sudo apt-get -y install libreoffice')
system('sudo apt-get -y install unoconv')
system('sudo apt-get -y install libreoffice-dmaths')

system('sudo apt-get -y install libbz2-dev')
system('sudo apt-get -y install libncurses5-dev')
system('sudo apt-get -y install curl')
system('sudo apt-get -y install a2ps')
system('sudo apt-get -y install wdiff')

# Support for Norwegian
system('sudo apt-get -y install language-pack-nb-base')

# SciTools must be installed from source
system('cd srclib')
system('hg clone http://code.google.com/p/scitools')
system('cd scitools')
system('sudo python setup.py install')
system('cd ../..')
# Alternative: pip install -e hg+https://code.google.com/p/scitools#egg=scitools

# Does not work: pip install -e hg+https://bitbucket.org/khinsen/scientificpython#egg=scientificpython
# Do manual install instead
system('cd srclib')
system('hg clone https://bitbucket.org/khinsen/scientificpython')
system('cd scientificpython')
system('sudo python setup.py install')
system('cd ../..')

print 'Everything is successfully installed!'
