FROM tonyrl/zerotier-base:latest

LABEL maintainer="seedgou <seedgou@gmail.com>"
LABEL zerotier.version="1.4.6"

RUN ln -sf /zerotier-one /zerotier-idtool
COPY startup.sh /startup.sh
EXPOSE 9993/udp

ENTRYPOINT ["/startup.sh"]