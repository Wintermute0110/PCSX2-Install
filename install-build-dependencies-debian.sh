#!/bin/bash

# Install PCSX2 build dependencies for Debian unstable (October 2018) in a i386 chroot.
#
# NOTE that a chroot is required! Otherwise the dependencies will mess with the 64 bit system.
#

# Install build tools
apt install build-essential cmake

# Install build libraries
apt install \
    libasound2-dev \
    liblzma-dev \
    zlib1g-dev \
    libpng-dev \
    libbz2-dev \
    libjpeg-dev

# Install complex build libraries
# CG -> nvidia-cg-toolkit
#
apt install \
    libsdl2-dev \
    libwxgtk3.0-dev \
    libgl1-mesa-dev \
    libglew-dev \
    libgtk2.0-dev
