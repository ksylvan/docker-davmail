#!/bin/sh
#
docker run -d -p 1080:1080 -p 1143:1143 -p 1389:1389 \
  -p 1110:1110 -p 1025:1025 -v ~/.davmail:/etc/davmail kayvan/davmail
