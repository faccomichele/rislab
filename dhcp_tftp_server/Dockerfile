FROM centos7:2.4.1

MAINTAINER Michele Facco <faccomichele@gmail.com>

ENV dir /tftpboot

RUN yum update -y && yum install -y tftp-server dhcp xinetd
RUN mkdir ${dir}
WORKDIR ${dir}
RUN systemctl enable xinetd
RUN systemctl enable tftp
RUN systemctl enable dhcpd


ADD Gemfile.lock ${dir}/Gemfile.lock
RUN bundle install
ADD railsrislab/ ${dir}
RUN bundle install

vi /etc/xinetd.d/tftp
vi /usr/lib/systemd/system/tftp.service
vi /etc/dhcp/dhcpd.conf
mkdir ${dir}/pxelinux.cfg
vi ${dir}/pxelinux.cfg/default

systemctl start xinetd
systemctl start tftp
systemctl start dhcpd
