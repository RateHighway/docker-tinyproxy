FROM alpine:latest

MAINTAINER RateHighway <ratehighway.com>

RUN apk update && apk add \
  asciidoc \
  autoconf \
  automake \
  bash \
  build-base \
  git

RUN mkdir /output

WORKDIR /work
ADD build_tinyproxy.sh .

CMD ["./build_tinyproxy.sh"]
