#!/bin/bash

# Install PCSX2 build dependencies for Debian unstable (October 2018).
# See https://wiki.debian.org/Multiarch/HOWTO
# NOTE a chroot is required! Otherwise the dependencies will mess with the 64 bit system.

# Enable i386 architecture
# After enabling a new architecture execute `apt-get update`
dpkg --add-architecture i386

# Install build tools
apt install build-essential cmake gcc-multilib g++-multilib

# Install build libraries
apt install \
    libasound2-dev:i386 \
    liblzma-dev:i386 \
    zlib1g-dev:i386 \
    libpng-dev:i386 \
    libbz2-dev:i386 \
    libjpeg-dev:i386

# Install complex build libraries
# CG -> nvidia-cg-toolkit
#
apt install \
    libsdl2-dev:i386 \
    libwxgtk3.0-dev:i386 \
    libgl1-mesa-dev:i386 \
    libglew-dev:i386 \
    nvidia-cg-toolkit:i386 \
    libgtk2.0-dev:i386
