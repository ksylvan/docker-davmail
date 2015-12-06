# DavMail service

FROM ubuntu:12.04

MAINTAINER Kayvan Sylvan <kayvansylvan@gmail.com>

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y default-jre wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/* /tmp/* /var/tmp/*

RUN mkdir /opt/davmail && \
    wget -q -O - http://downloads.sourceforge.net/project/davmail/davmail/4.7.0/davmail-linux-x86_64-4.7.0-2408.tgz | \
    tar -C /opt/davmail --strip-components=1 -xvz

EXPOSE 1080
EXPOSE 1143
EXPOSE 1389
EXPOSE 1110
EXPOSE 1025

WORKDIR /opt/davmail
CMD ["/etc/davmail/davmail.properties"]
ENTRYPOINT ["/opt/davmail/davmail.sh"]
