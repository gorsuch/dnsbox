FROM ubuntu:trusty
MAINTAINER Michael Gorsuch <michael.gorsuch@gmail.com>

RUN apt-get update
RUN apt-get install -y dnsmasq

COPY dnsmasq.conf /etc/

EXPOSE 53

CMD ["dnsmasq", "-d"]
