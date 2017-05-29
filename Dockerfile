FROM centos:7
MAINTAINER martinsauve@gmail.com
RUN yum -y install wget

RUN wget http://ftp.tu-chemnitz.de/pub/linux/dag/redhat/el7/en/x86_64/rpmforge/RPMS/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm
RUN rpm -Uvh rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm

RUN yum -y install httperf
RUN mkdir /var/httperf

ADD launch.sh /var/httperf/httperf.sh
RUN chmod -v +x /var/httperf/httperf.sh

CMD tail -f /dev/null

