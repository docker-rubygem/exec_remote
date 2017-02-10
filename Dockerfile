FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.2

RUN gem install exec_remote --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["exec_remote"]
CMD ["--help"]
