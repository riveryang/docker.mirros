# SSH for CentOS latest

FROM centos:latest
MAINTAINER "River Yang" "comicme_yanghe@icloud.com"

RUN yum install -y wget

RUN mkdir /etc/yum.repos.d/backup
RUN mv /etc/yum.repos.d/*.repo /etc/yum.repos.d/backup

RUN wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo

RUN yum clean all
RUN yum makecache

RUN yum update -y

RUN yum install -y openssh openssh-clients openssh-server

RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
RUN ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa
RUN echo "root:root" | chpasswd

RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
