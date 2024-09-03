#!/bin/bash
# Datamu
sudo apt updte
sudo apt install screen -y
screen -R hemi
git clone https://github.com/hemilabs/heminetwork.git
cd heminetwork
make deps
make install
read -p "Masukan Private Key Anda: " PK
export POPM_BTC_PRIVKEY=$PK
export POPM_STATIC_FEE=1425
export POPM_BFG_URL=wss://testnet.rpc.hemi.network/v1/ws/public
./bin/popmd
echo "GO !!!"
