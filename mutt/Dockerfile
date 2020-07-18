FROM debian:bullseye-slim

MAINTAINER https://github.com/nchern

WorkDir /root

RUN apt-get update \ 
    && apt-get install -y neomutt neovim \
    && apt-get -y autoremove \
	&& rm -rf /var/lib/apt/lists/*

ENV LC_ALL=en_us.UTF-8
ENV LC_CTYPE=ru_RU.UTF-8

ENV TERM xterm-256color
ENV LANG C.UTF-8


CMD neomutt
