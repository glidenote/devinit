#!/bin/sh

cd ~/
mkdir src opt
cd ~/src
wget http://cx4a.org/pub/rsense/rsense-0.3.tar.bz2
tar jxvf rsense-0.3.tar.bz2
cp -a rsense-0.3 ~/opt
export RSENSE_HOME=$HOME/opt/rsense-0.3
ruby ~/opt/rsense-0.3/etc/config.rb > ~/.rsense
chmod +x ~/opt/rsense-0.3/bin/rsense
~/opt/rsense-0.3/bin/rsense --version

# display message
echo ""
echo "add .vimrc"
echo "------------------"
echo "NeoBundle 'Shougo/neocomplcache-rsense'"
echo "let g:neocomplcache#sources#rsense#home_directory = \$HOME . '/opt/rsense-0.3'"
echo "------------------"
