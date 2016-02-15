# Nginx for ubuntu 14.04
# Version 1.0.0

FROM ubuntu:14.04
MAINTAINER River Yang "comicme_yanghe@icloud.com"

ADD sources.list /etc/apt/
RUN apt-get update
RUN apt-get install -y nginx

ADD nginx.conf /etc/nginx/
ADD etcd.conf /etc/nginx/conf.d/
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 3379

CMD [ "nginx" ]

