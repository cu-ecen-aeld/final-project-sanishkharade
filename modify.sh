#!/bin/bash

echo "Entering directory buildroot"
cd buildroot/
#echo "Rebuilding ldd package"
#make ldd-rebuild
#echo "Rebuilding aesd-assignments package"
#make aesd-assignments-rebuild
#echo "Rebuilding aesd-char-device package"
#make aesd-char-device-rebuild


echo "Rebuilding aesd-uart-driver package"
make aesd-uart-driver-rebuild

echo "Exiting directory buildroot"
cd ..
echo "Running build.sh"
./build.sh