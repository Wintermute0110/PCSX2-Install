#!/bin/bash
#
# Create a 32 bit chroot in a 64 bit os to build PCSX2
# See https://wiki.debian.org/chroot
#
# * This scripts needs to be execute by user root.
#
# * Make sure binutils and debootstrap are installed
#   apt-get install binutils debootstrap
#
# * Execute this script only once.
#
export MCHRMIRROR=http://deb.debian.org/debian
export MCHRARCH=i386
export MCHRREL=testing
export MCHRDIR=/home/kodi/chroot-${MCHRREL}-${MCHRARCH}
echo My chroot dir is ${MCHRDIR}
mkdir -p ${MCHRDIR}

# Build chroot
# debootstrap --variant=buildd --arch=${MCHRARCH} ${MCHRREL} ${MCHRDIR} ${MCHRMIRROR}

# prevent that dpkg starts deamons in the chroot environment
cat > ${MCHRDIR}/usr/sbin/policy-rc.d <<EOF
#!/bin/sh
exit 101
EOF
chmod a+x ${MCHRDIR}/usr/sbin/policy-rc.d

# In the chroot "hard code" ischroot to true
cp  ${MCHRDIR}/bin/true ${MCHRDIR}/usr/bin/ischroot

# Basic configuration
cp /etc/hosts ${MCHRDIR}/etc/hosts
cp /etc/resolv.conf ${MCHRDIR}/etc/resolv.conf
