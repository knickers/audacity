#!/bin/bash
set -e

docker run --rm \
	-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
	-v /dev/snd:/dev/snd \
	-v ~:/home/user \
	-e DISPLAY="unix$DISPLAY" \
	$(find /dev/snd/ -type c | sed 's/^/--device /') \
	knickers/audacity
