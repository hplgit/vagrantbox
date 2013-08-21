\
#!/usr/bin/env python
# Automatically generated script. Based on debpkg.txt.

import commands, sys

def system(cmd):
    """Run system command cmd."""
    failure, output = commands.getstatusoutput(cmd)
    if failure:
       print 'Command\n  %s\nfailed.' % cmd
       print output
       sys.exit(1)

system('sudo apt-get update --fix-missing')
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

# Tcl/Tk
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
system('sudo apt-get -y install python-dev')
# Matplotlib requires libfreetype-dev libpng-dev
# (otherwise pip install matplotlib does not work)
system('sudo apt-get -y install libfreetype6-dev')
system('sudo apt-get -y install libpng-dev')
sudo pip install numpy

sudo pip install sympy

sudo pip install cython

system('sudo apt-get -y install swig')
#pip install matplotlib
system('sudo apt-get -y install python-matplotlib')
sudo pip install scipy

sudo pip install ipython

sudo pip install nose

sudo pip install sphinx  # installs pygments and docutils too

sudo pip install flask

sudo pip install django

sudo pip install mako

system('sudo apt-get -y install pydb')
system('sudo apt-get -y install python-profiler')
system('sudo apt-get -y install python-dev')
system('sudo apt-get -y install python-opengl')
system('sudo apt-get -y install python-pygame')
system('sudo apt-get -y install python-pdftools')
system('sudo apt-get -y install python-qt4')
system('sudo apt-get -y install python-gtk2-dev')
system('sudo apt-get -y install libqt4-dev')
system('sudo apt-get -y install python-qt4-dev')
system('sudo apt-get -y install python-pmw')
system('sudo apt-get -y install python-traits')
system('sudo apt-get -y install python-traitsbackendqt')
system('sudo apt-get -y install python-traitsbackendwx')
system('sudo apt-get -y install python-traitsgui')
system('sudo apt-get -y install python-enthoughtbase')
system('sudo apt-get -y install python-pyface')
system('sudo apt-get -y install pype')
system('sudo apt-get -y install python-tagpy')

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
system('sudo apt-get -y install smpeg-plaympeg')
system('sudo apt-get -y install mplayer')
system('sudo apt-get -y install totem')
system('sudo apt-get -y install ffmpeg')
system('sudo apt-get -y install libav-tools')

# LaTeX
system('sudo apt-get -y install texinfo')
# These lines are only necessary for Ubuntu 12.04 to install texlive 2012
system('ubuntu_version=`lsb_release -r | awl '{print $2}'`')
system('if [ $ubuntu_version = "12.04" ]; then')
system('sudo add-apt-repository ppa:texlive-backports/ppa')
system('sudo apt-get update')
system('fi')
system('sudo apt-get -y install texlive')
system('sudo apt-get -y install texlive-extra-utils')
system('sudo apt-get -y install texlive-latex-extra')
system('sudo apt-get -y install texlive-math-extra')
system('sudo apt-get -y install texlive-font-utils')
system('sudo apt-get -y install latexdiff')
system('sudo apt-get -y install auctex')

# Misc
system('sudo apt-get -y install pandoc')
system('sudo apt-get -y install konsole')
system('sudo apt-get -y install gnome-terminal')
system('sudo apt-get -y install libreoffice')
system('sudo apt-get -y install unoconv')
system('sudo apt-get -y install libreoffice-dmaths')

system('sudo apt-get -y install libbz2-dev')
system('sudo apt-get -y install libncurses5-dev')
system('sudo apt-get -y install swig')
system('sudo apt-get -y install curl')
system('sudo apt-get -y install a2ps')
system('sudo apt-get -y install wdiff')
system('sudo apt-get -y install jhead')
system('sudo apt-get -y install apt-file')
system('sudo apt-get -y install apturl')
system('sudo apt-get -y install libssl-dev')
system('sudo apt-get -y install openssh-server')
system('sudo apt-get -y install gconf-editor')
system('sudo apt-get -y install meld')
system('sudo apt-get -y install xxdiff')
system('sudo apt-get -y install diffpdf')
system('sudo apt-get -y install kdiff3')

# Support for Norwegian
system('sudo apt-get -y install language-pack-nb-base')

# SciTools must be installed from source
system('cd srclib')
system('hg clone http://code.google.com/p/scitools')
system('cd scitools')
system('sudo python setup.py install')
system('cd ../..')
# Alternative: pip install -e hg+https://code.google.com/p/scitools#egg=scitools

sudo pip install -e git+https://github.com/hplgit/odespy.git#egg=odespy

# Does not work: pip install -e hg+https://bitbucket.org/khinsen/scientificpython#egg=scientificpython
# Do manual install instead
system('cd srclib')
system('hg clone https://bitbucket.org/khinsen/scientificpython')
system('cd scientificpython')
system('sudo python setup.py install')
system('cd ../..')

print 'Everything is successfully installed!'
