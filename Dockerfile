FROM resin/rpi-raspbian:wheezy
RUN apt-get update
RUN apt-get install -y bash
ENTRYPOINT ["/bin/bash"]
