FROM ubuntu:bionic

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    debhelper \
    && apt-get autoremove \
    && apt-get clean \
    mkdir /input /output

COPY build-deb.sh /build-deb

ENTRYPOINT "/build-deb"
CMD [ "0.0.0" ]