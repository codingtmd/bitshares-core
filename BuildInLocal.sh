
#!/bin/bash

# prepare the env
echo "Build the environment...."
sudo apt-get -y update

sudo apt-get install -y autoconf cmake make automake libtool git libboost-all-dev libssl-dev g++ libcurl4-openssl-dev

sudo apt-get install -y libboost-all-dev


# Checkout the version and sync module
echo "Checkout the version and sync module...."

git checkout 2.0.180612

git submodule update --init --recursive

# Build and Make
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo .
make

echo "Done."