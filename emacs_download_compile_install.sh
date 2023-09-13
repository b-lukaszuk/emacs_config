#!/bin/bash

# be careful, make sure to know what you are doing, use it at your own risk

# prerequisites
sudo apt install build-essential libgif-dev libgnutls28-dev libgtk2.0-dev libjpeg-dev libncurses-dev libpng-dev libtiff-dev libx11-dev libxpm-dev texinfo libjansson-dev

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
./configure --with-json # or just ./configure
make
sudo make install
