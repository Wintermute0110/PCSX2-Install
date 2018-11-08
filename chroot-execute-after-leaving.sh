#!/bin/bash
#
# Execute this script before entering the chroot.
#

export MCHRARCH=i386
export MCHRREL=testing
export MCHRDIR=/home/kodi/chroot-${MCHRREL}-${MCHRARCH}
echo My chroot dir is ${MCHRDIR}

# mount stuff, you will need more often
[ ! -z ${MCHRDIR} ] && echo Unmounting stuff from the chroot
[ ! -z ${MCHRDIR} ] && umount ${MCHRDIR}/proc
[ ! -z ${MCHRDIR} ] && umount ${MCHRDIR}/dev/pts
[ ! -z ${MCHRDIR} ] && umount ${MCHRDIR}/dev
