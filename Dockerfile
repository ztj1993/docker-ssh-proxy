FROM alpine:3.11.6

LABEL maintainer="Ztj <ztj1993@gmail.com>"

ADD https://github.com/txthinking/brook/releases/download/v20210701/brook_linux_amd64 /bin/brook

ADD socks-to-http /bin/socks-to-http
ADD ssh-to-socks /bin/ssh-to-socks

RUN apk add --no-cache sshpass openssh-client \
  && chmod +x /bin/brook \
  && chmod +x /bin/ssh-to-socks \
  && chmod +x /bin/socks-to-http
