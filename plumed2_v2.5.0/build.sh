#!/bin/bash

if [[ $target_platform == linux* ]]; then
./configure --prefix=$PREFIX LDFLAGS="$BUILD_PREFIX/lib/libz.a $BUILD_PREFIX/lib/libz.so.1" --enable-mpi CC=mpicc CXX=mpicxx
make -j 4
make install
fi

if [[ $target_platform == osx* ]]; then
export MACOSX_DEPLOYMENT_TARGET=10.9 # - helps on some OSX platforms
./configure --prefix=$PREFIX LDFLAGS="$BUILD_PREFIX/lib/libz.a $BUILD_PREFIX/lib/libz.dylib" --enable-mpi CC=mpicc CXX=mpicxx
make -j 4
make install
fi

