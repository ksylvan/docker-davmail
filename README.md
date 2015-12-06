# docker-davmail

Dockerized DavMail POP/IMAP/SMTP/Caldav/Carddav/LDAP Exchange Gateway

## Quickstart Instructions

Put your [DavMail](http://davmail.sourceforge.net/) configuration file in
`~/.davmail/` and start the docker container.

The [standalone server configuration](http://davmail.sourceforge.net/serversetup.html)
from the DavMail site is a good starting point.

    docker run -d -p 1080:1080 -p 1143:1143 -p 1389:1389 \
      -p 1110:1110 -p 1025:1025 -v ~/.davmail:/etc/davmail kayvan/davmail

The ports above correspond with the `Listener ports` in the `davmail.properties`
file.

Connect with the container using the IP address of the docker host.

On Mac OS X, with `docker-machine`, the IP address to use is the address
returned by running this command:

    docker-machine ip default

And on Linux, where you are running the container on the same host, the address
is `localhost` (127.0.0.1).

Feel free to fork and submit pull requests at https://github.com/ksylvan/docker-davmail

Kayvan Sylvan <kayvansylvan@gmail.com>
