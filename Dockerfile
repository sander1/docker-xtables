FROM ubuntu:16.04

ENV COMMIT 4e4ab880fc0c884d39b966de7819eb81084752b5

WORKDIR /opt

RUN \
  apt-get update && \
  apt-get install -y \
    curl unzip xtables-addons-common libtext-csv-xs-perl libnetaddr-ip-perl && \
  curl -L \
    -o /tmp/GeoLite2xtables.zip \
    https://github.com/mschmitt/GeoLite2xtables/archive/${COMMIT}.zip && \
  unzip -o \
    /tmp/GeoLite2xtables.zip && \
  mv \
    ./GeoLite2xtables-${COMMIT} ./GeoLite2xtables && \
  mkdir \
    /xt_build && \
  rm -rf \
    /var/lib/apt/lists/* && \
  rm \
    /tmp/GeoLite2xtables.zip

COPY ./xt_build.sh /opt/GeoLite2xtables

RUN chmod +x /opt/GeoLite2xtables/xt_build.sh

VOLUME /xt_build

CMD ["/opt/GeoLite2xtables/xt_build.sh"]