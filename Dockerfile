FROM alpine:3.5

MAINTAINER ZappiStore DevOps <devops@zappistore.com>

ARG SYSLOG_NG_VERSION="3.7.2-r3"

RUN apk --update add \
  openssl \
  syslog-ng=${SYSLOG_NG_VERSION}

ENTRYPOINT ["/usr/sbin/syslog-ng", "--foreground"]
