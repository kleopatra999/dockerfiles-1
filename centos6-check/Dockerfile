FROM docker.io/centos:centos6
MAINTAINER Masatake YAMATO

RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum -y install autoconf automake libxml2-devel pkgconfig gcc make git sudo
ADD make-check.sh /bin/make-check.sh
RUN chmod a+x /bin/make-check.sh
RUN adduser user
CMD sudo -u user /bin/make-check.sh
