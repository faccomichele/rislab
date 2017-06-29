FROM centos:7.3.1611

MAINTAINER Michele Facco <faccomichele@gmail.com>

ENV dir /tftpboot
ENV ldir sysfiles

RUN yum update -y && yum install -y tftp-server dhcp xinetd
RUN mkdir ${dir}
WORKDIR ${dir}

ADD ${ldir}/etc_dhcp_dhcpd.conf /etc/dhcp/dhcpd.conf
ADD ${ldir}/etc_xinetd.d_tftp /etc/xinetd.d/tftp
ADD ${ldir}/usr_lib_systemd_system_tftp.service /usr/lib/systemd/system/tftp.service

RUN systemctl enable xinetd
RUN systemctl enable tftp
RUN systemctl enable dhcpd

RUN mkdir ${dir}/pxelinux.cfg
ADD ${ldir}/pxelinux.cfg_default ${dir}/pxelinux.cfg/default
ADD ${ldir}/undionly.kpxe ${dir}/undionly.kpxe

RUN /usr/sbin/init
