FROM alpine:latest
# RUN echo deb http://archive.ubuntu.com/ubuntu/ precise main universe > /etc/apt/sources.list.d/precise.list
RUN apk update -q
RUN apk add -q openvpn iptables socat curl
ADD ./bin /usr/local/sbin
VOLUME /etc/openvpn
EXPOSE 443/tcp 1194/udp 8080/tcp
CMD run
