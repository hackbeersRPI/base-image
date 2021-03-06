FROM resin/rpi-raspbian:jessie

# Install Systemd

ENV container lxc

# We never want these to run in a container
RUN systemctl mask \
    dev-hugepages.mount \
    sys-fs-fuse-connections.mount \
    sys-kernel-config.mount \

    display-manager.service \
    getty@.service \
    systemd-logind.service \
    systemd-remount-fs.service \

    getty.target \
    graphical.target

COPY entry.sh /usr/bin/entry.sh 
COPY launch.service /etc/systemd/system/launch.service
RUN  chmod +x /usr/bin/entry.sh
RUN systemctl enable /etc/systemd/system/launch.service

ENTRYPOINT ["/usr/bin/entry.sh"]
CMD ["/bin/bash"]
