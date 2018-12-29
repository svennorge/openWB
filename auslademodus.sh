#!/bin/bash

auslademodus(){
	if grep -q 1 "/var/www/html/openWB/ramdisk/ladestatus"; then
		runs/set-current.sh 0 m
	fi
	if grep -q 1 "/var/www/html/openWB/ramdisk/ladestatuss1"; then
		runs/set-current.sh 0 s1
	fi
	if grep -q 1 "/var/www/html/openWB/ramdisk/ladestatuss2"; then
		runs/set-current.sh 0 s2
	fi
	if (( llkombiniert > 300 )); then
		runs/set-current.sh 0 m
		runs/set-current.sh 0 s1
		runs/set-current.sh 0 s2
	fi
	exit 0
}

semiauslademodus(){
	if grep -q 1 "/var/www/html/openWB/ramdisk/ladestatus"; then
		runs/set-current.sh 0 m
	fi
	if grep -q 1 "/var/www/html/openWB/ramdisk/ladestatuss1"; then
		runs/set-current.sh 0 s1
	fi
	if grep -q 1 "/var/www/html/openWB/ramdisk/ladestatuss2"; then
		runs/set-current.sh 0 s2
	fi
	exit 0
}
