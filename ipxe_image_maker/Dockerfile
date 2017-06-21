FROM centos:7.3.1611

MAINTAINER Michele Facco <faccomichele@gmail.com>

ENV dir /rislab

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir ${dir}
WORKDIR ${dir}
ADD Gemfile ${dir}/Gemfile
ADD Gemfile.lock ${dir}/Gemfile.lock
RUN bundle install
ADD railsrislab/ ${dir}
RUN bundle install




git clone git://git.ipxe.org/ipxe.git
cd ipxe-master/src/
make bin/undionly.kpxe

now you can do: cp bin/undionly.kpxe /tftpboot/
