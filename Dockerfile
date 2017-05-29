FROM centos:7
MAINTAINER martinsauve@gmail.com
RUN yum -y install wget

RUN wget http://ftp.tu-chemnitz.de/pub/linux/dag/redhat/el7/en/x86_64/rpmforge/RPMS/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm
RUN rpm -Uvh rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm

RUN yum -y install httperf

ADD launch.sh /httperf.sh
RUN chmod -v +x /httperf.sh

CMD tail -f /dev/null

