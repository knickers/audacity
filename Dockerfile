FROM debian:wheezy

RUN apt-get update && apt-get install -y \
		audacity \
	--no-install-recommends && rm -rf /var/lib/apt/lists/*

CMD ["audacity"]
