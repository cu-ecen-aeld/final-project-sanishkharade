#! /bin/sh

# Reference - Mastering Embedded Linux Programming Chapter 10, pg no 457

case "$1" in
	start)
		echo "Loading scull and faulty modules"
		/usr/bin/module_load faulty
		/usr/bin/scull_load
		modprobe hello
		;;
	stop)
		echo "Unloading scull and faulty modules"
		/usr/bin/module_unload faulty
		/usr/bin/scull_unload
		rmmod hello
		# modprobe -r hello
		;;
	*)
		echo "Usage: $0 {start|stop}"
	exit 1
esac

exit 0