FROM ruby:2.2-onbuild

ENTRYPOINT ["bin/gemstash", "start", "--no-daemonize"]
CMD ["--config-file=/usr/src/app/docker/gemstash.yml"]
