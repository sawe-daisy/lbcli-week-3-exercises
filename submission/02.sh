#!/bin/bash
# Create a native segwit address and get the public key from the address.

ADDRESS=$(bitcoin-cli -regtest -rpcwallet="btrustwallet" getnewaddress "" "bech32")
echo "Address: $ADDRESS"
PUBKEY=$(bitcoin-cli -regtest -rpcwallet="btrustwallet" getaddressinfo "$ADDRESS" | jq -r '.pubkey')
echo "$PUBKEY"
