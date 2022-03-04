#! /bin/sh

# Reference - Mastering Embedded Linux Programming Chapter 10, pg no 457

case "$1" in
	start)
		echo "Loading scull and faulty modules"
		/usr/bin/scull_load
		/usr/bin/module_load faulty
		modprobe hello
		;;
	stop)
		echo "Unloading scull and faulty modules"
		/usr/bin/scull_unload
		/usr/bin/module_unload faulty
		rmmod hello
		;;
	*)
		echo "Usage: $0 {start|stop}"
	exit 1
esac

exit 0