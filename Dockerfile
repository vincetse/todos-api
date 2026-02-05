FROM ruby:3.4.8-slim

ENV PORT 3000
EXPOSE 3000

RUN \
  apt-get update -qq && \
  apt-get install -qq \
    build-essential \
    libpq-dev \
    libxml2-dev \
    libxslt1-dev \
    > /dev/null && \
  echo "gem: --no-rdoc --no-ri" > ~/.gemrc && \
  gem install foreman

WORKDIR /tmp
COPY Gemfile* /tmp/
#RUN bundle install

WORKDIR /app
COPY . /app

CMD foreman run web
