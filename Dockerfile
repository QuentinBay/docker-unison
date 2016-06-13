FROM debian
MAINTAINER quentinbayart

RUN apt-get -y update && apt-get -y install unison

COPY ./conf/default.prf /home/.unison/default.prf
COPY ./sbin/loop-unison.sh /usr/sbin/loop-unison

VOLUME ["/media/sf_virtual_app"]
VOLUME ["DATA/app"]

CMD ["/usr/sbin/loop-unison"]
