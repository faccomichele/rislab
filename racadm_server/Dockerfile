FROM centos7:2.4.1

MAINTAINER Michele Facco <faccomichele@gmail.com>

ENV dir /rislab

RUN yum update -y && yum install -y net-snmp-utils
RUN mkdir ${dir}
WORKDIR ${dir}
RUN wget https://downloads.dell.com/FOLDER04161783M/1/OM-MgmtStat-Dell-Web-LX-8.5.0-2372_A00.tar.gz
RUN tar -xvzf OM-MgmtStat-Dell-Web-LX-8.5.0-2372_A00.tar.gz
WORKDIR ${dir}/linux/rac/RHEL7/x86_64
RUN rpm -ivh *.rpm
WORKDIR ${dir}

RUN bundle install
