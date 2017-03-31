# Audacity

If you're using pulseaudio for sound, you need to also configure ALSA to work properly.

Dynamically enable/disable pulseaudio
- https://wiki.debian.org/PulseAudio/#Dynamically_enable.2Fdisable

Change the default sound device
- http://superuser.com/a/630356

The run command is available as a shell script
- [https://raw.githubusercontent.com/knickers/audacity/master/run.sh](https://raw.githubusercontent.com/knickers/audacity/master/run.sh)

Here is the run command

	docker run --rm \
		-u $(id -u):$(id -g) \
		-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
		-v /dev/snd:/dev/snd \
		-v "$HOME:$HOME" \
		-w "$HOME" \
		-e DISPLAY="unix$DISPLAY" \
		-e HOME \
		$(find /dev/snd/ -type c | sed 's/^/--device /') \
		knickers/audacity
