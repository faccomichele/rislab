FROM debian:7.11

MAINTAINER Michele Facco <faccomichele@gmail.com>

ENV gitdir /ipxe

RUN apt-get update -qq && apt-get install -y git make gcc liblzma-dev
RUN mkdir /rislab
RUN mkdir ${gitdir}
WORKDIR ${gitdir}
RUN git clone git://git.ipxe.org/ipxe.git
WORKDIR ${gitdir}/ipxe/src
