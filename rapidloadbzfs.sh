#/bin/bash

# Basic script

cd $HOME
if [ ! -d "$HOME/bzfs" ]; then
  mkdir "$HOME/bzfs"
fi
cd "$HOME/bzfs"

if [ ! -d "$HOME/bzfs/2.4.30" ]; then
  mkdir "$HOME/bzfs/2.4.30"
fi

cd "$HOME/bzfs/2.4.30"

wget -U "" -O https://github.com/BZFlag-Dev/bzflag/archive/refs/tags/v2.4.30.zip bzflag-2.4.30.zip

unzip bzflag-2.4.30.zip
cd bzflag-2.4.30
./autogen.sh
sleep 1
./configure
sleep 1
make
sleep 1

mv "$HOME/bzfs/2.4.30/bzflag-2.4.30/src/bzfs/bzfs" "$HOME/bzfs/2.4.30/bzfs"



