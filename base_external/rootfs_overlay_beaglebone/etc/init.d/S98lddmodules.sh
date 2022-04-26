#! /bin/sh

# Reference - Mastering Embedded Linux Programming Chapter 10, pg no 457

case "$1" in
	start)
		echo "Loading scull and faulty modules"
		#/usr/bin/module_load faulty
		#/usr/bin/scull_load
		modprobe hello

		echo "Loading aesduart module"
		insmod /lib/modules/4.19.79/extra/aesduart.ko

		echo "Loading aesdchar module"
		/usr/bin/aesdchar_load
		;;
	stop)
		echo "Unloading scull and faulty modules"
		#/usr/bin/module_unload faulty
		#/usr/bin/scull_unload
		rmmod hello

		echo "Unloading aesduart module"
		rmmod /lib/modules/4.19.79/extra/aesduart.ko

		echo "Unloading aesdchar module"
		/usr/bin/aesdchar_unload
		# modprobe -r hello
		;;
	*)
		echo "Usage: $0 {start|stop}"
	exit 1
esac

exit 0