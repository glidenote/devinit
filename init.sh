#!/bin/sh

sudo yum -y install zsh tmux mercurial ncurses-devel gcc gcc-c++

mkdir ~/src
cd ~/src

# install vim
hg clone https://vim.googlecode.com/hg/ vim
cd vim
./configure --with-features=huge --enable-multibyte --disable-selinux
make
sudo make install clean

# install zsh-5.0.0
cd ~/src
wget http://downloads.sourceforge.net/project/zsh/zsh/5.0.0/zsh-5.0.0.tar.gz
tar zxvf zsh-5.0.0.tar.gz
cd zsh-5.0.0
./configure
make
sudo make install clean
