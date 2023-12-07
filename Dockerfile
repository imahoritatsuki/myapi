FROM ruby:3.2.2

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /myapi

COPY Gemfile Gemfile.lock /myapi/

RUN bundle install

COPY . /myapi/
