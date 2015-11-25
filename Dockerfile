FROM resin/rpi-raspbian:wheezy

COPY entry.sh /usr/bin/entry.sh
RUN chmod 755 /usr/bin/entry.sh 
ENTRYPOINT ["/usr/bin/entry.sh"]
