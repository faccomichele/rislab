FROM ruby:2.4.1

MAINTAINER Michele Facco <faccomichele@gmail.com>

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rislab
WORKDIR /rislab
ADD Gemfile /rislab/Gemfile
ADD Gemfile.lock /rislab/Gemfile.lock
RUN bundle install
RUN rails new . --force
ADD ./railsrislab /rislab
