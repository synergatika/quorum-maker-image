#!/bin/bash

#This is for base tag of image syneblock/quorum-master:base
echo "deb http://ppa.launchpad.net/ethereum/ethereum/ubuntu bionic main" >> /etc/apt/sources.list.d/ethereum-bioinc.list
echo "deb-src http://ppa.launchpad.net/ethereum/ethereum/ubuntu bionic main" >> /etc/apt/sources.list.d/ethereum-bioinc.list
apt-get install dirmngr --install-recommends
apt-key adv --keyserver keyserver.ubuntu.com  --recv-keys 2A518C819BE37D2C2031944D1C52189C923F6CA9
apt-get update

apt-get install -y libdb-dev libleveldb-dev libsodium-dev zlib1g-dev libtinfo-dev
apt-get install -y build-essential
apt-get install -y wget
apt-get install -y curl
apt-get install -y jq
apt-get install -y psmisc
apt-get install -y iputils-ping
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
source ~/.bashrc
nvm install --lts
npm install solc -g
ln -s /root/.nvm/versions/node/v10.16.3/bin/solcjs /bin/solc
apt-get install bsdmainutils
apt-get install -y openjdk-8-jdk
apt-get -y install maven
apt-get -y install net-tools