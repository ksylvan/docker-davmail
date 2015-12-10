#!/bin/sh
#

NAME=davmail
PORTS="-p 1080:1080 -p 1143:1143 -p 1389:1389 -p 1110:1110 -p 1025:1025"

case "$1" in
  start)
    docker run --name=$NAME -d $PORTS -v ~/.davmail:/etc/davmail kayvan/davmail
    ;;
  stop)
    docker rm -f $NAME
    ;;
  restart)
    $0 stop; $0 start;
    ;;
  *)
    echo "Usage: $0 [start|stop|restart]"
    ;;
esac
