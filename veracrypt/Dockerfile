FROM debian:jessie-slim

MAINTAINER https://github.com/nchern

WorkDir /root

RUN apt-get update && apt-get -y install curl bzip2 fuse module-init-tools module-assistant dmsetup \
	&& rm -rf /var/lib/apt/lists/*

ENV VERACRYPT "veracrypt-1.22"

RUN curl -L https://launchpad.net/veracrypt/trunk/1.22/+download/$VERACRYPT-setup.tar.bz2|tar xvj \
    && ./$VERACRYPT-setup-console-x64 --noexec --target veracrypt \
    && sed -i 's/TTY=0/TTY=1/g' ./veracrypt/veracrypt_install_console_x64.sh \
    && sed -i 's/INSTALL=-1/INSTALL=1/g' ./veracrypt/veracrypt_install_console_x64.sh \
    && sed -i 's/ACCEPTED=0/ACCEPTED=1/g' ./veracrypt/veracrypt_install_console_x64.sh \
    && sed -i 's/$MORE/true/g' ./veracrypt/veracrypt_install_console_x64.sh \
    && sed -i 's/&& read A//g' ./veracrypt/veracrypt_install_console_x64.sh \
    && sed -i 's/read A//g' ./veracrypt/veracrypt_install_console_x64.sh \
    && ./veracrypt/veracrypt_install_console_x64.sh \
    && rm -rf veracrypt* /usr/bin/veracrypt-uninstall.sh

# Convenient shotcuts
RUN echo "alias veracrypt-create='veracrypt --random-source /dev/urandom -c'" >> /root/.bashrc
RUN echo "alias veracrypt-mount='veracrypt -m nokernelcrypto'" >> /root/.bashrc
RUN echo "alias veracrypt-unmount-all='veracrypt -d'" >> /root/.bashrc
RUN echo "alias quit='veracrypt-unmount-all && exit'" >> /root/.bashrc
