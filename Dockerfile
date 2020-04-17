FROM alpine:latest
MAINTAINER Frenchie <sam@frenchie.com.au>

RUN apk add curl busybox-extras netcat-openbsd && rm -rf /var/cache/apk/* 

RUN \
 set -e; \
 v=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt); \
 curl -LO https://storage.googleapis.com/kubernetes-release/release/$v/bin/linux/amd64/kubectl; \
 chmod +x kubectl; \
 mv kubectl /usr/local/bin/

