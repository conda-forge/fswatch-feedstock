#!/bin/bash

if [[ -n "$POSIX_PREFIX" ]];
then
    export PREFIX="$POSIX_PREFIX/Library/mingw-w64"
    export PATH="$POSIX_PREFIX/Library/usr/bin:$POSIX_PATH"

    export ACLOCAL=aclocal-$AM_VERSION
    export AUTOMAKE=automake-$AM_VERSION

    export AR=gcc-ar
    export CC=gcc
    export CXX=g++
    export NM=gcc-nm
    export RANLIB=gcc-ranlib

    autoreconf -fi \
               -I "$POSIX_PREFIX/Library/usr/share/aclocal" \
               -I "$PREFIX/share/aclocal"
fi

./configure --prefix="$PREFIX"
make
make check
make install
