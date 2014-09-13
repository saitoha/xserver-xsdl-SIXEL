#!/bin/sh

x11prefix=/opt/X11

env SDL=yes PKG_CONFIG_PATH="/opt/X11/lib/pkgconfig" CFLAGS="-O3 -Ofast" \
./autogen.sh \
    --prefix=${x11prefix} \
    --with-xkb-path=${x11prefix}/share/X11/xkb \
    --with-xkb-bin-directory=${x11prefix}/bin \
    --enable-debug \
    --disable-xorg \
    --disable-dmx \
    --disable-xvfb \
    --disable-xnest \
    --disable-xquartz \
    --disable-xwin \
    --disable-xephyr \
    --disable-xfake \
    --disable-xfbdev \
    --disable-unit-tests \
    --enable-mitshm \
    --disable-dri \
    --disable-dri2 \
    --disable-dri3 \
    --disable-present \
    --disable-glx \
    --disable-xf86vidmode \
    --disable-xquartz \
    --disable-composite \
    --disable-xv \
    --disable-dga \
    --disable-screensaver \
    --disable-xdmcp \
    --disable-xdm-auth-1 \
    --disable-xinerama \
    --disable-docs \
    --enable-xsdl \
    --enable-kdrive \
    --disable-kdrive-kbd \
    --disable-kdrive-mouse \
    --disable-kdrive-evdev \

nice -n19 make -j8

