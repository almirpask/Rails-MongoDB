FROM ruby:latest
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /mongotest
WORKDIR /mongotest
COPY Gemfile /mongotest/Gemfile
COPY Gemfile.lock /mongotest/Gemfile.lock
RUN bundle install
COPY . /mongotest
