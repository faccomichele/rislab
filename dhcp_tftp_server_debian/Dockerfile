FROM debian:7.11

MAINTAINER Michele Facco <faccomichele@gmail.com>

ENV dir /tftpboot
ENV ldir sysfiles

RUN apt-get update -qq
RUN mkdir ${dir}
WORKDIR ${dir}
