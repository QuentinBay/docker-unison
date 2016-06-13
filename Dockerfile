FROM debian
MAINTAINER quentinbayart

RUN apt-get -y update && apt-get -y install unison

RUN mkdir /root/.unison
COPY ./conf/default.prf /root/.unison/default.prf
COPY ./sbin/loop-unison.sh /root/loop-unison.sh

VOLUME ["/media/sf_virtual_app"]
VOLUME ["DATA/app"]

ENTRYPOINT ["sh", "/root/loop-unison.sh"]
