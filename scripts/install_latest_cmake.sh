#!/usr/bin/env bash

readonly CMAKE_VERSION_TO_INSTALL="3.15.2"


apt-get purge cmake
apt-get install -y wget

cd /tmp
wget https://github.com/Kitware/CMake/releases/download/v${CMAKE_VERSION_TO_INSTALL}/cmake-${CMAKE_VERSION_TO_INSTALL}.tar.gz
tar -zxvf cmake-${CMAKE_VERSION_TO_INSTALL}.tar.gz
cd cmake-${CMAKE_VERSION_TO_INSTALL}
./bootstrap
make -j`nproc`
make install
