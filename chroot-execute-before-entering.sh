#!/bin/bash
#
# Execute this script before entering the chroot.
#

export MCHRARCH=i386
export MCHRREL=testing
export MCHRDIR=/home/kodi/chroot-${MCHRREL}-${MCHRARCH}
echo My chroot dir is ${MCHRDIR}

# mount stuff, you will need more often
[ ! -z ${MCHRDIR} ] && echo Mounting stuff in the chroot
mount --bind /dev ${MCHRDIR}/dev
mount --bind /dev/pts ${MCHRDIR}/dev/pts
mount --bind /proc  ${MCHRDIR}/proc
