<<<<<<< HEAD
FROM debian:jessie

RUN echo "deb http://http.debian.net/debian jessie-backports main"  >> /etc/apt/sources.list

RUN apt-get -q update \
	&& apt-get -qy install \
		curl \
		docker.io \
		debootstrap

RUN gpg --recv-keys --keyserver pgp.mit.edu 0x9165938D90FDDD2E

COPY . /usr/src/mkimage

WORKDIR /usr/src/mkimage

CMD ./build.sh

=======
FROM resin/rpi-raspbian:wheezy
RUN apt-get update
RUN apt-get install -y bash
ENTRYPOINT ["/bin/bash"]
>>>>>>> ebf5c09bf8a08f0ae6a66814c17470dbe8d80475
