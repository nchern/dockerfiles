FROM debian:bullseye-slim

MAINTAINER https://github.com/nchern

WorkDir /root

RUN apt-get update \ 
    && apt-get install -y neomutt neovim \
    && apt-get -y autoremove \
	&& rm -rf /var/lib/apt/lists/*

CMD neomutt
