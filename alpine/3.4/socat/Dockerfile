# Socat proxy from alpine 3.4
# Version: latest

FROM alpine:3.4
MAINTAINER "River Yang" "comicme_yanghe@nanoframework.org"

RUN apk update && apk add socat && rm -r /var/cache

EXPOSE 2375

CMD [ "socat", "-d", "-d", "TCP4-LISTEN:2375,fork", "UNIX-CONNECT:/var/run/docker.sock" ]
