FROM ubuntu:16.04

LABEL maintainer="obsidian Docker Maintainer"

RUN apt-get update

RUN apt-get install -f -y nano software-properties-common build-essential autoconf automake git g++ libtool make unzip wget qt5-default qt5-qmake qtbase5-dev qtbase5-dev-tools libqt5webkit5 libqt5webkit5-dev libqt5qml5 libqt5quickwidgets5 qml-module-qt-labs-settings qtdeclarative5-dev-tools qttools5-dev-tools libboost-all-dev libssl-dev libdb++-dev libdb5.3++-dev libdb5.3-dev libminiupnpc-dev libqrencode-dev libprotobuf-dev

COPY bin/* /usr/bin/

RUN add-apt-repository ppa:bitcoin/bitcoin && \
    apt-get update && \
    apt-get install libdb4.8-dev libdb4.8++-dev -y

RUN apt-get update

RUN apt-get install libsodium-dev -y

RUN chmod 777 /usr/bin/obsidiand

COPY obsidian.conf /root/.obsidian/obsidian.conf

EXPOSE 1988