# Jenkins on Docker
# Version: 1.0.0

FROM ubuntu:14.04
MAINTAINER River Yang "comicme_yanghe@icloud.com"
ENV REFRENSHED_AT 2015-12-27

# 添加阿里源
ADD ./sources.list /etc/apt/
# 安装 wget
RUN apt-get update && apt-get install -y wget

# 添加docker源和gpg
RUN sh -c "wget -qO- https://get.docker.io/gpg | apt-key add -"
RUN echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list

RUN apt-get install -y apt-transport-https


ADD jdk-8u45-linux-x64.tar.gz /usr/local/
ENV JAVA_HOME /usr/local/jdk1.8.0_45
ENV PATH $JAVA_HOME/bin:$PATH
ENV CLASSPATH .:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

# 安装依赖以及docker
RUN apt-get update
RUN apt-get install -y iptables ca-certificates lxc git-core lxc-docker

# Jenkins环境变量
ENV JENKINS_HOME /opt/jenkins/data
ENV JENKINS_MIRROR http://mirrors.jenkins-ci.org

RUN mkdir -p $JENKINS_HOME/plugins
ADD jenkins.war /opt/jenkins/

# 添加Jenkins插件
RUN for plugin in chucknorris greenballs scm-api git-client git ws-cleanup;\
        do wget -P $JENKINS_HOME/plugins $JENKINS_MIRROR/plugins/${plugin}/latest/${plugin}.hpi; \
    done

ADD ./docker-jenkins.sh /usr/local/bin/docker-jenkins.sh
RUN chmod +x /usr/local/bin/docker-jenkins.sh

# 挂载目录
VOLUME /var/lib/docker

# 开放端口
EXPOSE 8080

# 启动指令
ENTRYPOINT [ "/usr/local/bin/docker-jenkins.sh" ]




