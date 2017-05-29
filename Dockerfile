FROM centos:7
MAINTAINER martinsauve@gmail.com
RUN yum -y update && \
    yum -y install epel-release 

RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install httpd && \
    yum clean all

RUN yum install -y httperf


ADD launch.sh /httperf.sh
RUN chmod -v +x /httperf.sh
CMD ["/httperf.sh "]

EXPOSE 80

# Simple startup script to avoid some issues observed with container restart
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]



CMD ['/var/httperf/run.sh']
