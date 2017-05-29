FROM centos:7
MAINTAINER martinsauve@gmail.com
RUN yum -y update && \
    yum -y install epel-release 

RUN yum install -y httperf

RUN mkdir -p /var/httperf

ENTRYPOINT ["tail", "-f", "/dev/null"]

