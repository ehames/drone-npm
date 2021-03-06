FROM alpine:3.4

RUN apk update && \
  apk add \
    ca-certificates \
    git \
    nodejs && \
  rm -rf /var/cache/apk/*

ADD drone-npm /bin/
ENTRYPOINT ["/bin/drone-npm"]
