#!/bin/sh

brew install pkg-config autoconf automake libtool

prefix=/usr/local

rm -rf libsixel SDL1.2-SIXEL

git clone https://github.com/saitoha/libsixel.git
git clone https://github.com/saitoha/SDL1.2-SIXEL.git

cd libsixel && \
    PKG_CONFIG_PATH="${prefix}/lib/pkgconifig" ./configure --prefix=${prefix} && \
    make install && \
    cd ../SDL1.2-SIXEL && \
    PKG_CONFIG_PATH="${prefix}/lib/pkgconifig" ./configure --prefix=${prefix} --enable-video-sixel --without-x && \
    make install 
