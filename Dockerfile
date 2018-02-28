FROM ruby:2.5-alpine

RUN mkdir /app
WORKDIR /app

COPY . /app

RUN bundle install --binstubs
RUN bin/rspec
