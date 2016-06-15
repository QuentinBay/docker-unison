FROM debian
MAINTAINER quentinbayart

RUN apt-get -y update && apt-get -y install unison \
    && mkdir /root/.unison

COPY ./conf/default.prf /root/.unison/default.prf

VOLUME ["/media/sf_virtual_app"]
VOLUME ["DATA/app"]

ENTRYPOINT ["watch", "-n", "2" "unison"]
