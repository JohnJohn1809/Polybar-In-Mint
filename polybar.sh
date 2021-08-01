#!/usr/bin/env bash

# Build Dependencies | References -> https://github.com/polybar/polybar/wiki/Compiling

sudo apt install build-essential -y
sudo apt install clang-6.0 -y
sudo apt install git -y
sudo apt install cmake -y
sudo apt install cmake-data -y
sudo apt install pkg-config -y
sudo apt install python3 -y
sudo apt install python3-sphinx -y
sudo apt install python3-packaging -y

# Dependencies

sudo apt install libcairo2-dev -y
sudo apt install libxcb1-dev -y
sudo apt install libxcb-util0-dev -y
sudo apt install libxcb-randr0-dev -y
sudo apt install libxcb-composite0-dev -y
sudo apt install python3-xcbgen -y
sudo apt install xcb-proto -y
sudo apt install libxcb-image0-dev -y
sudo apt install libxcb-ewmh-dev -y
sudo apt install libxcb-icccm4-dev -y

# Linux Mint Dependencies

sudo apt install libjsoncpp-dev -y

# Clone Polybar

git clone --recursive https://github.com/polybar/polybar

cd polybar

# Compilling

mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install
