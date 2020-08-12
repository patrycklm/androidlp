#!/bin/bash
pkg install tsu
pkg install cmake
pkg install make
pkg install clang 
pkg install libpcap 
pkg install libuv 
pkg install git
git clone https://github.com/patrycklm/switch-lan-play.git
mkdir switch-lan-play/build
pushd switch-lan-play/build
cmake ..
make
popd
cp ./switch-lan-play/build/src/lan-play .
export LD_LIBRARY_PATH=/data/data/com.termux/files/usr/lib
cd
wget https://raw.githubusercontent.com/patrycklm/androidlp/master/patrycklm
wget https://raw.githubusercontent.com/patrycklm/androidlp/master/ps4
chmod 755 patrycklm
chmod 755 ps4
