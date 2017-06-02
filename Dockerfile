###############################################################################
# Name:         Dockerfile
# Authors:      Daniel Middleton <daniel-middleton.com>
#               RateHighway <ratehighway.com>
# Description:  Dockerfile used to build ratehighway/tinyproxy
# Usage:        docker build -t ratehighway/tinyproxy:latest .
###############################################################################

FROM alpine:latest

MAINTAINER RateHighway <ratehighway.com>

RUN apk update && apk add \
  bash \
  tinyproxy

ADD tinyproxy-build/tinyproxy /usr/sbin/tinyproxy
ADD tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

WORKDIR /root
ADD run.sh .

CMD ["./run.sh"]
