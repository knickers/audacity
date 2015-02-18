#!/bin/bash
set -e

docker run --rm \
	-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
	-v /dev/snd:/dev/snd \
	-v ~:/home/user \
	-lxc-conf='lxc.cgroup.devices.allow = c 116:* rmw' \
	-e DISPLAY="unix$DISPLAY" \
	knickers/audacity
