FROM ubuntu:16.04

LABEL maintainer="obsidian Docker Maintainer"

RUN apt-get update

RUN apt-get install -f -y build-essential autoconf automake git g++ libtool make unzip wget qt5-default qt5-qmake qtbase5-dev qtbase5-dev-tools libqt5webkit5 libqt5webkit5-dev libqt5qml5 libqt5quickwidgets5 qml-module-qt-labs-settings qtdeclarative5-dev-tools qttools5-dev-tools libboost-all-dev libssl-dev libdb++-dev libdb5.3++-dev libdb5.3-dev libminiupnpc-dev libqrencode-dev libprotobuf-dev

COPY bin/* /usr/bin/

RUN installlibsodium.sh

RUN config.sh

RUN chmod 777 /usr/bin/obsidiand

EXPOSE 1988