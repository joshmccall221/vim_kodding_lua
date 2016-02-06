#!/bin/bash

sudo apt-get update

sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    ruby-dev mercurial

sudo apt-get remove vim vim-runtime gvim


sudo apt-get install liblua5.2-dev lua5.2


wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
tar xvf vim-7.4.tar.bz2
cd vim74
./configure --with-features=huge \
        --enable-multibyte \
        --enable-rubyinterp \
        --enable-pythoninterp \
        --with-python-config-dir=/usr/lib/python2.7/config \
        --enable-perlinterp \
        --enable-luainterp \
        --enable-gui=gtk2 --enable-cscope --prefix=/usr


make VIMRUNTIMEDIR=/usr/share/vim/vim74

sudo make install

sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
sudo update-alternatives --set editor /usr/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
sudo update-alternatives --set vi /usr/bin/vim

vim --version
