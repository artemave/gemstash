FROM ruby:2.2

RUN mkdir -p /app/lib/gemstash
WORKDIR /app

COPY Gemfile gemstash.gemspec ./
COPY lib/gemstash/version.rb ./lib/gemstash/
RUN bundle install --retry 3 --jobs 3

COPY . .

ENTRYPOINT ["bin/gemstash", "start", "--no-daemonize"]
CMD ["--config-file=/app/docker/gemstash.yml"]
