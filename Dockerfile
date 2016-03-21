FROM ruby:2.0.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /project-metrics
WORKDIR /project-metrics
ADD Gemfile /project-metrics/Gemfile
ADD Gemfile.lock /project-metrics/Gemfile.lock
RUN bundle install
ADD . /project-metrics
