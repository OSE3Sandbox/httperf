FROM centos
MAINTAINER martinsauve@gmail.com
RUN yum install -y wget \
 && wget http://ftp.tu-chemnitz.de/pub/linux/dag/redhat/el7/en/x86_64/rpmforge/RPMS/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm

RUN rpm -Uvh rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm
RUN yum install -y httperf



