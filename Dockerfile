FROM ruby:2.7.0-alpine3.11

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile* /usr/src/app/

RUN gem install bundler
RUN bundle install

