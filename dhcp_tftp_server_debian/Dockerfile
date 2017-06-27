FROM debian:7.11

MAINTAINER Michele Facco <faccomichele@gmail.com>

ENV dir /tftpboot
ENV ldir sysfiles

RUN apt-get update -qq && apt-get install -y isc-dhcp-server tftpd-hpa nano net-tools
RUN mkdir ${dir}
WORKDIR ${dir}
ADD ${ldir}/etc_dhcp_dhcpd.conf /etc/dhcp/dhcpd.conf
ADD ${ldir}/etc_default_tftpd-hpa /etc/default/tftpd-hpa
