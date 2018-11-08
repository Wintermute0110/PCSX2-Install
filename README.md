## Compile and install PCSX2 on Debian/Ubuntu distributions ##

A set of scripts to compile and install **PCSX2**.

The user running the PCSX2 emulator is named `kodi`.

This scripts assume you are running a 64 bit operating system. PCSX2 is a 32 bit application
and must be cross-compiled as a 32 bit application in a 64 bit operating system.

### Cloning this repository ###

If you don't have `git` installed then execute as `root`
```
# apt-get install git
```

To clone this repository:
```
$ cd /home/kodi
$ git clone https://github.com/Wintermute0110/PCSX2Install.git
```

The Kodi compilation tools will be cloned into the directory `/home/kodi/PCSX2Install/`.


### Clone and prepare PCSX2 source code ###

As the `kodi` user clone the Kodi source code. This will take a while:
```
$ cd /home/kodi/PCSX2Install/
$ git clone https://github.com/PCSX2/pcsx2.git pcsx2
```

If you want to compile a particular version of Kodi first have a look at the
tags in the repository:
```
$ cd /home/kodi/PCSX2Install/pcsx2
$ git tag
v1.3.1
v1.4.0
v1.5.0-dev
$ 
```

Each tag corresponds to a released version of the emulator. Now, tell `git` to set the
**PCSX2** source code to the version you want:
```
$ git checkout v1.4.0
```

The **PCSX2** source code is now ready for compilation.


### Compile and installing PCSX2 for the first time ###

First you need to install the build dependencies required to compile **PCSX2**.
As `root` execute:
```
# cd /home/kodi/PCSX2Install
# ./install-build-dependencies-debian.sh
```

Now it's time to compile Kodi. This will take a while (about 15 minutes on a
fast computer):
```
$ ./build-pcsx2.sh
```

COMPLETE ME.

Finally, to install **PCSX2** execute:
```
$ ./install-kodi.sh
```

Now that **PCSX2** is installed you can safely delete the **PCSX2** build directory to save disk space:
```
$ ./purge-build-directory.sh
```

### Update PCSX2 ###

COMPLETE ME

Update **PCSX2** source code:
```
$ cd /home/kodi-source/
$ git checkout master
$ git pull
```

If you wish to set a specific version:
```
$ git checkout 17.6-Krypton
```

Then configure, compile and install Kodi again:
```
$ cd /home/kodi/KodiInstall
$ ./configure-kodi.sh
$ ./build-kodi-x11.sh
$ ./clean-binary-addons.sh
$ ./build-binary-addons-selected.sh
$ ./install-kodi.sh
$ ./purge-build-directory.sh
```
