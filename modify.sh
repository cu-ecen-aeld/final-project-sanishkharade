#!/bin/bash

echo "Entering directory buildroot"
cd buildroot/
echo "Rebuilding ldd package"
make ldd-rebuild
echo "Exiting directory buildroot"
cd ..
echo "Running build.sh"
./build.sh