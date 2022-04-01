#!/bin/bash

# prerequisites
sudo apt install build-essential libgif-dev libgnutls28-dev libgtk2.0-dev libjpeg-dev libncurses-dev libpng-dev libtiff-dev libx11-dev libxpm-dev texinfo

# downloading emacs from the official gnu repository (ftp server)
wget https://ftp.gnu.org/gnu/emacs/emacs-27.2.tar.gz # change emacs version here
tar xvzf emacs-27.2.tar.gz # change emacs version here

cd emacs-27.2 || exit # change emacs version here
./configure --with-native-compilation --with-json # or just ./configure
make
sudo make install
