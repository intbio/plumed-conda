#!/bin/bash

export MACOSX_DEPLOYMENT_TARGET=10.9 # - helps on some OSX platforms

./configure --prefix=$PREFIX LDFLAGS=$BUILD_PREFIX/lib/libz.a
make -j 4
make install

