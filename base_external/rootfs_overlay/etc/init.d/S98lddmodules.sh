#! /bin/sh

# Reference - Mastering Embedded Linux Programming Chapter 10, pg no 457

case "$1" in
	start)
		echo "Loading aesdchar module"
		/usr/bin/aesdchar_load
		;;
	stop)
		echo "Unloading aesdchar module"
		/usr/bin/aesdchar_unload
		# modprobe -r hello
		;;
	*)
		echo "Usage: $0 {start|stop}"
	exit 1
esac

exit 0