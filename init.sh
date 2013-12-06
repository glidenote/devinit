#!/bin/sh

sudo yum -y install zsh tmux mercurial ncurses-devel gcc gcc-c++ paco

mkdir ~/src
cd ~/src

# install vim74
hg clone https://vim.googlecode.com/hg/ vim
cd vim
./configure --with-features=huge --enable-multibyte --disable-selinux
make
sudo paco -D make install clean

# install zsh-5.0.2
cd ~/src
wget http://sourceforge.net/projects/zsh/files/zsh/5.0.2/zsh-5.0.2.tar.bz2/download
tar xvjf zsh-5.0.2.tar.bz2
cd zsh-5.0.2
./configure
make
sudo paco -D make install clean

# update
sudo paco -ua
