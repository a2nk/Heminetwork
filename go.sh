#!/bin/bash
sudo apt update
read -p "Masukan Private Key Anda: " PK
export POPM_BTC_PRIVKEY=$PK
export POPM_STATIC_FEE=1425
export POPM_BFG_URL=wss://testnet.rpc.hemi.network/v1/ws/public
./bin/popmd
echo "GO !!!"
