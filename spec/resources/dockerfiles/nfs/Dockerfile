FROM debian:9-slim

RUN apt-get update && apt-get -y install nfs-kernel-server

RUN mkdir /var/nfsroot && chown nobody:nogroup /var/nfsroot/

RUN echo "/var/nfsroot     192.168.1.0/16(rw,root_squash,subtree_check)" >> /etc/exports
RUN exportfs -ra


CMD /bin/bash && tail -f /dev/null

