FROM ruby:2.4.1

MAINTAINER Michele Facco <faccomichele@gmail.com>

ENV dir /rislab

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir ${dir}
WORKDIR ${dir}
ADD Gemfile ${dir}/Gemfile
ADD Gemfile.lock ${dir}/Gemfile.lock
RUN bundle install
RUN rails new ${dir} --force
