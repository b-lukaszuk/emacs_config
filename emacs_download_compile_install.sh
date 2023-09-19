#!/bin/bash

# be careful, make sure to know what you are doing, use it at your own risk

# prerequisites
sudo apt install build-essential libgif-dev libgnutls28-dev libgtk2.0-dev \
    libjpeg-dev libncurses-dev libpng-dev libtiff-dev libx11-dev \
    libxpm-dev texinfo libjansson-dev autoconf make gcc  libgtk-3-dev \
      libtiff5-dev libncurses5-dev libharfbuzz-dev \
      libharfbuzz-bin imagemagick libmagickwand-dev \
      libgccjit-10-dev libgccjit0 gcc-10 libjansson4 libjansson-dev \
      xaw3dg-dev texinfo

# downloading emacs from the official gnu repository (ftp server)
wget https://ftp.gnu.org/gnu/emacs/emacs-29.1.tar.gz # change emacs version here

# to download *.sig file
# wget https://ftp.gnu.org/gnu/emacs/emacs-29.1.tar.gz.sig # change emacs version here
# info about *sig files: https://ubuntuforums.org/showthread.php?t=1946900

# to get gnu-keyring-gpg
# wget https://ftp.gnu.org/gnu/gnu-keyring.gpg
# info about gnu-keyring.gpg: https://stackoverflow.com/questions/5701388/where-can-i-find-the-public-key-for-gnu-emacs

tar xvzf emacs-29.1.tar.gz # change emacs version here

cd emacs-29.1 || exit # change emacs version here

export CC="gcc-10"
./autogen.sh

./configure --with-json --with-native-compilation # or just ./configure

make
sudo make install
