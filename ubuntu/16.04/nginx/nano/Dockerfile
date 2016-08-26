# Nginx for ubuntu 16.04
# Version 1.0.0

FROM registry.nanoframework.org:5000/ubuntu-zh_cn:16.04
MAINTAINER River Yang "comicme_yanghe@icloud.com"

RUN apt-get install -y nginx

ADD nginx.conf /etc/nginx/
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

CMD [ "nginx" ]
