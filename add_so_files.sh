#!/bin/bash

IP_ADDRESS=128.138.189.132
FILE_1=gcc-linaro-6.5.0-2018.12-x86_64_arm-linux-gnueabihf/arm-linux-gnueabihf/libc/lib/libc.so.6
FILE_2=gcc-linaro-6.5.0-2018.12-x86_64_arm-linux-gnueabihf/arm-linux-gnueabihf/libc/lib/ld-linux-armhf.so.3

echo "Entering Toolchain directory"

cd /home/sanish/AESD/Toolchain

echo "Copying ${FILE_1}"
scp -r ${FILE_1} root@${IP_ADDRESS}:/lib/

echo "Copying ${FILE_2}"
scp -r ${FILE_2} root@${IP_ADDRESS}:/lib/