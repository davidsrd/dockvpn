FROM gliderlabs/alpine:3.3

RUN apk add --update \
    bash nano curl \
    openvpn iptables socat \
    && rm -rf /var/cache/apk/*

ADD ./bin /usr/local/sbin
VOLUME /etc/openvpn
EXPOSE 443/tcp 1194/udp 8080/tcp
CMD run
