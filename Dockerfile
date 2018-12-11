FROM ubuntu:16.04

LABEL maintainer="obsidian Docker Maintainer"

COPY bin/* /usr/bin/

RUN chmod 777 /usr/bin/obsidiand

EXPOSE 1988