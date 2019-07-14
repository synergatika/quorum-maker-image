FROM dyne/devuan:ascii
ADD lib/install_baseimage.sh /root/quorum-maker/install_baseimage.sh
RUN /root/quorum-maker/install_baseimage.sh