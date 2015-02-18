FROM debian:wheezy

RUN useradd --create-home user

RUN apt-get update && apt-get install -y \
		audacity \
	--no-install-recommends && rm -rf /var/lib/apt/lists/*

USER user
VOLUME /home/user

CMD ["audacity"]
