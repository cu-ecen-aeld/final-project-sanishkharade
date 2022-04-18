cd ../final-project-kamini2801/socket_server/

IP_ADDRESS=128.138.189.132

make CROSS_COMPILE=arm-linux-gnueabihf- server

scp server root@${IP_ADDRESS}:/usr/bin