#!/usr/bin/env bash

sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install -y ethereum
cd
mkdir eth-new
mv /vagrant/genesis.json ~/eth-new/genesis.json
mkdir eth-data
geth --datadir eth-new genesis.json init eth-new/genesis.json --networkid 123 --nodiscover --maxpeers 0 console
