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

echo "Rebuilding aesd-socket package"
make aesd-socket-rebuild

echo "Rebuilding aesd-gpio package"
make aesd-gpio-rebuild

echo "Exiting directory buildroot"
cd ..
echo "Running build.sh"
./build.sh