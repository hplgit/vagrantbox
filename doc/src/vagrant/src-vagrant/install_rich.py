#!/usr/bin/env python
# Automatically generated script by
# vagrantbox/doc/src/vagrant/src-vagrant/deb2sh.py
# where vagrantbox is the directory arising from
# git clone git@github.com:hplgit/vagrantbox.git

# The script is based on packages listed in debpkg_rich.txt.

logfile = 'tmp_output.log'  # store all output of all operating system commands
f = open(logfile, 'w'); f.close()  # touch logfile so it can be appended

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
    print output
    f = open(logfile, 'a'); f.write(output); f.close()

system('sudo apt-get update --fix-missing')
# Install downloaded source code in ~/srclib
# cd

cmd = """
if [ ! -d srclib ]; then mkdir srclib; fi
# Editors

"""
system(cmd)
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
system('sudo apt-get -y install cmake')

# Numerical libraries
system('sudo apt-get -y install libatlas-base-dev')
system('sudo apt-get -y install libsuitesparse-dev')

# Software development
system('sudo apt-get -y install pkg-config')
system('sudo apt-get -y install flex')
system('sudo apt-get -y install bison')
system('sudo apt-get -y install libboost-dev')
system('sudo apt-get -y install libboost-filesystem-dev')
system('sudo apt-get -y install libboost-iostreams-dev')
system('sudo apt-get -y install libboost-program-options-dev')
system('sudo apt-get -y install libboost-thread-dev')
system('sudo apt-get -y install libboost-math-dev')
system('sudo apt-get -y install libboost-timer-dev')
system('sudo apt-get -y install libboost-chrono-dev')
system('sudo apt-get -y install libcln-dev')
system('sudo apt-get -y install libmpfr-dev')
system('sudo apt-get -y install libcppunit-dev')
system('sudo apt-get -y install libopenmpi-dev')
system('sudo apt-get -y install openmpi-bin')
system('sudo apt-get -y install libptscotch-dev')
system('sudo apt-get -y install libxml2-dev')
system('sudo apt-get -y install libhwloc-dev')
system('sudo apt-get -y install libhdf5-openmpi-dev')
system('sudo apt-get -y install libeigen3-dev')
system('sudo apt-get -y install libcgal-dev')
system('sudo apt-get -y install libpcre3-dev')
system('sudo apt-get -y install gccxml')

# SWIG 3.0.0
system('sudo apt-get -y install wget')

cmd = """
cd srclib
wget -N http://downloads.sourceforge.net/swig/swig-3.0.0.tar.gz
tar zxf swig-3.0.0.tar.gz
cd swig-3.0.0
./configure
make
sudo make install
cd ..
# Tcl/Tk

"""
system(cmd)
system('sudo apt-get -y install tcl8.5-dev')
system('sudo apt-get -y install tk8.5-dev')
system('sudo apt-get -y install blt-dev')

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
system('sudo apt-get -y install python-setuptools')
system('sudo apt-get -y install python-dev')
# Matplotlib requires libfreetype-dev libpng-dev
# (otherwise pip install matplotlib does not work)
system('sudo apt-get -y install libfreetype6-dev')
system('sudo apt-get -y install libpng-dev')
# ScientificPython does not work with numpy version >= 1.9
# (FEniCS depends on ScientificPython, SciTools too)
#pip install numpy
# ScientificPython needs numpy 1.8
# Alternative: patch newer numpy with the oldnumeric and numarray modules
system('sudo pip install numpy==1.8.2')
system('sudo pip install sympy')
system('sudo pip install cython')
system('sudo pip install numexpr')
#pip install pyparsing
#pip install matplotlib
system('sudo apt-get -y install python-matplotlib')
#ipython-notebook  # too old version in debian
system('sudo pip install ipython --upgrade')
system('sudo pip install tornado --upgrade')
system('sudo pip install pyzmq --upgrade')
system('sudo pip install scipy')
system('sudo pip install nose')
system('sudo pip install pytest')
system('sudo pip install sphinx')
system('sudo pip install flask')
system('sudo pip install django')
system('sudo pip install mako')
system('sudo pip install flake8')
system('sudo pip install pylint')
system('sudo apt-get -y install pydb')
system('sudo apt-get -y install python-profiler')
system('sudo apt-get -y install python-dev')
system('sudo apt-get -y install spyder')
system('sudo apt-get -y install python-opengl')
system('sudo apt-get -y install python-pygame')
system('sudo apt-get -y install python-pdftools')
system('sudo apt-get -y install python-qt4')
system('sudo apt-get -y install python-gtk2-dev')
system('sudo apt-get -y install libqt4-dev')
system('sudo apt-get -y install python-qt4-dev')
system('sudo apt-get -y install python-pmw')
system('sudo apt-get -y install python-traits')
system('sudo apt-get -y install python-traitsui')
system('sudo apt-get -y install python-enthoughtbase')
system('sudo apt-get -y install python-pyface')
system('sudo apt-get -y install pype')
system('sudo apt-get -y install python-tagpy')
system('sudo apt-get -y install python-ply')
system('sudo apt-get -y install python-netcdf')

# Gnuplot
system('sudo apt-get -y install gnuplot')
system('sudo apt-get -y install gnuplot-doc')
system('sudo apt-get -y install gnuplot-x11')
system('sudo apt-get -y install liblualib50-dev')

# Plotting and visualization programs
system('sudo apt-get -y install grace')
system('sudo apt-get -y install dx')
system('sudo apt-get -y install dx-doc')
system('sudo apt-get -y install mayavi2')
system('sudo apt-get -y install tcl-vtk')
system('sudo apt-get -y install python-vtk')
system('sudo apt-get -y install libvtk5-dev')

# "Matlab"
system('sudo apt-get -y install octave')
system('sudo apt-get -y install octave-splines')
system('sudo apt-get -y install octave-symbolic')
system('sudo apt-get -y install octave-specfun')
system('sudo apt-get -y install octave-optim')
system('sudo apt-get -y install octave-odepkg')
system('sudo apt-get -y install octave-audio')

# Databases
system('sudo apt-get -y install libsqlite3-dev')

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

# LaTeX
system('sudo apt-get -y install texinfo')
# These lines are only necessary for Ubuntu 12.04 to install texlive 2012
# (let if tests be on one line)
#$ ubuntu_version=`lsb_release -r | awk '{print $2}'`
#$ if [ $ubuntu_version = "12.04" ]; then sudo add-apt-repository -y ppa:texlive-backports/ppa; sudo apt-get update; fi
system('sudo apt-get -y install texlive')
system('sudo apt-get -y install latex-beamer')
system('sudo apt-get -y install texlive-extra-utils')
system('sudo apt-get -y install texlive-latex-extra')
system('sudo apt-get -y install texlive-latex-recommended')
system('sudo apt-get -y install texlive-math-extra')
system('sudo apt-get -y install texlive-font-utils')
system('sudo apt-get -y install texlive-humanities')
system('sudo apt-get -y install latexdiff')
system('sudo apt-get -y install auctex')

# Animations: avconv and ffmpeg (ffmpeg is no longer in Debian)
system('sudo apt-get -y install libav-tools')
#ffmpeg
system('sudo apt-get -y install libavcodec-extra-54')
system('sudo apt-get -y install libx264-dev')
# libavcodec-extra has extension 54 or 55, etc., depending on the Ubuntu version
system('sudo apt-get -y install libavcodec-extra-54')
#x264 h264enc
# Animations: players
system('sudo apt-get -y install mplayer')
system('sudo apt-get -y install gnome-mplayer')
system('sudo apt-get -y install mencoder')
system('sudo apt-get -y install totem')
system('sudo apt-get -y install totem-plugins')
system('sudo apt-get -y install totem-mozilla')
system('sudo apt-get -y install vlc')
system('sudo apt-get -y install browser-plugin-vlc')
system('sudo apt-get -y install gxine')
system('sudo apt-get -y install python-pyxine')
system('sudo apt-get -y install xine-plugin')
system('sudo apt-get -y install libxine2-dev')
system('sudo apt-get -y install libxine2-all-plugins')
system('sudo apt-get -y install gxineplugin')
system('sudo apt-get -y install libxine2-ffmpeg')
system('sudo apt-get -y install swfdec-gnome')
# FIXME: this package requires multiverse to be enabled in sources.list
#flashplugin-installer

# Misc
system('sudo apt-get -y install unity-tweak-tool')
system('sudo apt-get -y install pandoc')
system('sudo apt-get -y install konsole')
system('sudo apt-get -y install gnome-terminal')
system('sudo apt-get -y install libreoffice')
system('sudo apt-get -y install unoconv')
system('sudo apt-get -y install libreoffice-dmaths')
system('sudo apt-get -y install libbz2-dev')
system('sudo apt-get -y install libncurses5-dev')
system('sudo apt-get -y install curl')
system('sudo apt-get -y install a2ps')
system('sudo apt-get -y install wdiff')
system('sudo apt-get -y install jhead')
system('sudo apt-get -y install apt-file')
system('sudo apt-get -y install apturl')
system('sudo apt-get -y install libssl-dev')
system('sudo apt-get -y install openssh-server')
system('sudo apt-get -y install meld')
system('sudo apt-get -y install fldiff')
system('sudo apt-get -y install diffpdf')
system('sudo apt-get -y install kdiff3')

# Support for Norwegian
system('sudo apt-get -y install language-pack-nb-base')


# Download source code and install in srclib subdirectory

# SciTools must be installed from source

cmd = """
cd srclib
hg clone http://code.google.com/p/scitools
cd scitools
sudo python setup.py install
cd ../..
# Alternative: pip install -e hg+https://code.google.com/p/scitools#egg=scitools

"""
system(cmd)
system('sudo pip install -e git+https://github.com/hplgit/odespy.git#egg=odespy')
# Does not work: pip install -e hg+https://bitbucket.org/khinsen/scientificpython#egg=scientificpython
# Do manual install instead


cmd = """
cd srclib
hg clone https://bitbucket.org/khinsen/scientificpython
cd scientificpython
sudo python setup.py install
cd ../..
# DocOnce (must clone with https since ssh keys are not present in the box)

cd srclib
git clone https://github.com/hplgit/doconce.git
if [ $? -ne 0 ]; then exit; fi
if [ -d doconce ]; then cd doconce; sudo python setup.py install; cd ../..; fi
# Install DocOnce dependencies not covered above

"""
system(cmd)
system('sudo pip install paver')
system('sudo pip install sphinxcontrib-paverutils')
system('sudo pip install diff_match_patch')
system('sudo pip install -e svn+http://preprocess.googlecode.com/svn/trunk#egg=preprocess')
system('sudo pip install -e hg+https://bitbucket.org/logg/publish#egg=publish#egg=publish')

system('sudo pip install -e hg+https://bitbucket.org/ecollins/cloud_sptheme#egg=cloud_sptheme')
system('sudo pip install -e git+https://github.com/ryan-roemer/sphinx-bootstrap-theme#egg=sphinx-bootstrap-theme')
system('sudo pip install -e hg+https://bitbucket.org/miiton/sphinxjp.themes.solarized#egg=sphinxjp.themes.solarized')
system('sudo pip install -e git+https://github.com/shkumagai/sphinxjp.themes.impressjs#egg=sphinxjp.themes.impressjs')

system('sudo pip install -e git+https://github.com/hplgit/pygments-doconce#egg=pygments-doconce')
system('sudo pip install -e git+https://github.com/kriskda/sphinx-sagecell#egg=sphinx-sagecell')
#pip install -e git+https://bitbucket.org/sanguineturtle/pygments-ipython-console#egg=pygments-ipython-console
system('sudo pip install -e git+https://bitbucket.org/hplbit/pygments-ipython-console#egg=pygments-ipython-console')

# Ptex2tex




print 'Everything is successfully installed!'
