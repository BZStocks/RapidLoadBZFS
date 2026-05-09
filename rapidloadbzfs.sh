#/bin/bash

# Basic script
bzversion="2.4.26"

cd $HOME
if [ ! -d "$HOME/bzfs" ]; then
  mkdir "$HOME/bzfs"
fi
cd "$HOME/bzfs"

if [ ! -d "$HOME/bzfs/$bzversion" ]; then
  mkdir "$HOME/bzfs/$bzversion"
fi

cd "$HOME/bzfs/$bzversion"

wget -U "" -O https://github.com/BZFlag-Dev/bzflag/archive/refs/tags/v$bzversion.zip bzflag-$bzversion.zip

unzip bzflag-$bzversion.zip
cd bzflag-$bzversion
./autogen.sh
sleep 1
./configure
sleep 1
make
sleep 1

mv "$HOME/bzfs/$bzversion/bzflag-$bzversion/src/bzfs/bzfs" "$HOME/bzfs/$bzversion/bzfs"



