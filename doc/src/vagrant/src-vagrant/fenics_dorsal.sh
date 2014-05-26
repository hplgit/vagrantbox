#!/bin/sh

# Install FEniCS using Dorsal
cd ~/srclib
git clone https://bitbucket.org/fenics-project/dorsal.git
cd dorsal
sed "s/STABLE_BUILD=true/STABLE_BUILD=false/" dorsal.cfg > local.cfg
cp FEniCS/platforms/supported/`lsb_release -cs`.platform local.platform
sed -i "s/^trilinos/#trilinos/" local.platform
sed -i "s/^petsc$/petsc-hpc\npetsc4py/" local.platform
sed -i "s/^)/libadjoint\ndolfin-adjoint\n)/" local.platform
./dorsal.sh local.platform
echo -e "\n# Enable development version of FEniCS from `date "+%Y-%m-%d"`" >> ~/.bashrc
echo "source ~/Work/FEniCS/share/fenics/fenics.conf" >> ~/.bashrc
# Remove source files
rm -rf ~/Work/FEniCS/src

# goss
cd ~/srclib
git clone https://bitbucket.org/johanhake/goss.git
cd goss
mkdir -p build
cd build
cmake ..
make
sudo make install

# gotran
#pip install -e git+https://bitbucket.org/johanhake/gotran.git#egg=gotran
cd ~/srclib
git clone https://bitbucket.org/johanhake/gotran.git
cd gotran
sudo python setup.py install

# modelparameters
#pip install -e git+https://bitbucket.org/johanhake/modelparameters.git#egg=modelparameters
cd ~/srclib
git clone https://bitbucket.org/johanhake/modelparameters.git
cd modelparameters
sudo python setup.py install

# beatadjoint
cd ~/srclib
hg clone https://bitbucket.org/johanhake/beatadjoint-delta-dg
cd beatadjoint-delta-dg
sudo python setup.py install
