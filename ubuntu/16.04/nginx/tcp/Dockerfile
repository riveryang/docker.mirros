# Nginx for ubuntu 16.04
# Version 1.0.0

FROM registry.nanoframework.org:5000/ubuntu-zh_cn:16.04
MAINTAINER River Yang "comicme_yanghe@icloud.com"

RUN apt-get install -y wget make gcc g++ openssl

RUN wget -P /usr/local/src ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.39.tar.gz
RUN wget -P /usr/local/src http://zlib.net/zlib-1.2.8.tar.gz
RUN wget -P /usr/local/src http://nginx.org/download/nginx-1.11.3.tar.gz

RUN tar -zxvf /usr/local/src/pcre-8.39.tar.gz -C /usr/local/src
RUN tar -zxvf /usr/local/src/zlib-1.2.8.tar.gz -C /usr/local/src
RUN tar -zxvf /usr/local/src/nginx-1.11.3.tar.gz -C /usr/local/src

RUN cd /usr/local/src/pcre-8.39 && ./configure && make && make install
RUN cd /usr/local/src/zlib-1.2.8 && ./configure && make && make install
RUN cd /usr/local/src/nginx-1.11.3 && ./configure --prefix=/usr/local/nginx --with-stream && make && make install

ADD nginx.conf /
RUN cp /nginx.conf /usr/local/nginx/conf
RUN echo "daemon off;" >> /usr/local/nginx/conf/nginx.conf

CMD [ "/usr/local/nginx/sbin/nginx" ]