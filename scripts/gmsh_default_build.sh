#!/bin/sh

GIT=$(command -v git)
SRCDIR=${TwoPiRoot}/src
REPO=$SRCDIR/gmsh-3.0.6-source
CMAKE=$(command -v cmake)
MAKE=$(command -v make)

mkdir -p $REPO/cmbuild
cd $REPO/cmbuild
$CMAKE .. -DCMAKE_INSTALL_PREFIX=${TwoPiRoot} -DCMAKE_INSTALL_RPATH=${TwoPiRoot} -DENABLE_BUILD_DYNAMIC=1
$MAKE
$MAKE install

