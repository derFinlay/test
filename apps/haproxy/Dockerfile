FROM haproxy:2.4

USER root

RUN apt-get update
RUN apt-get install libcap2-bin -y
RUN setcap 'cap_net_bind_service=+ep' /usr/local/sbin/haproxy

USER haproxy

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg