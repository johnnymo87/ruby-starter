# Base image
FROM ruby:3.4-bookworm AS base

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem update --system && \
  bundle config set without 'development test' && \
  bundle

# Release image
FROM base AS release

COPY . .

# Dev image
FROM release AS dev

RUN bundle config --delete without && \
  bundle

CMD rspec
