FROM centos:7
MAINTAINER martinsauve@gmail.com
RUN yum -y update && \
    yum -y install epel-release 

# RUN yum install -y httperf


ADD launch.sh /httperf.sh
RUN chmod -v +x /httperf.sh

ENTRYPOINT ['tail -f /dev/null']

