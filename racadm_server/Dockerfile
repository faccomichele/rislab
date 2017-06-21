FROM centos:7.3.1611

MAINTAINER Michele Facco <faccomichele@gmail.com>

ENV dir /rislab

RUN yum update -y && yum install -y net-snmp-utils openssl pciutils
RUN mkdir ${dir}
WORKDIR ${dir}
ADD local_repo/ ${dir}
RUN rpm -ivh *.rpm
