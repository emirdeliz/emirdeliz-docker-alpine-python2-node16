FROM --platform=linux/arm64/v8 node:16.3.0-alpine
LABEL maintainer="Emir Marques <emirdeliz@gmail.com>"

ENV PYTHON_VERSION="2.7"
RUN echo -e "http://nl.alpinelinux.org/alpine/v3.5/main\nhttp://nl.alpinelinux.org/alpine/v3.5/community" > /etc/apk/repositories
RUN apk add --no-cache python2

RUN mkdir source
WORKDIR /source