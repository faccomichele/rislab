FROM ruby

MAINTAINER Michele Facco <faccomichele@gmail.com>

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rislab
WORKDIR /rislab
ADD Gemfile /rislab/Gemfile
ADD Gemfile.lock /rislab/Gemfile.lock
RUN bundle install
ADD ./railsrislab /rislab

CMD ["rails", "server"]
