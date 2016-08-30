# Celena webapp from Ubuntu 16.04 jdk8u102
# Version 0.0.1-SNAPSHOT

FROM registry.nanoframework.org:5000/ubuntu_16.04_jdk8:u102
MAINTAINER "River Yang" "comicme_yanghe@icloud.com"

## ADD application to '/' path
# ADD celena-webapp-0.0.1-SNAPSHOT.tar.gz /
ADD entrypoint.sh /

EXPOSE 7000

ENTRYPOINT ["/entrypoint.sh"]
