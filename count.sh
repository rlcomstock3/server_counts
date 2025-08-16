#!/bin/bash

quake=$(quake_count.sh)
mumble=$(mumble_count.sh)
minecraft=$(minecraft_count.sh)

i=0

if [ "$quake" -eq 0 ]; then
	echo "No quake users"
else
	echo "Current quake users"
	i=$((i+1))
fi

if [ "$mumble" -eq 0 ]; then
	echo "No mumble users"
else
	echo "Current mumble users"
	i=$((i+1))
fi

if [ "$minecraft" -eq 0 ]; then
	echo "No minecraft users"
else
	echo "Current minecraft users"
	i=$((i+1))
fi

if [ "$i" -eq 0 ]; then
	echo "No game users"
	sudo systemctl suspend
else
	echo "There are current game users"
fi
