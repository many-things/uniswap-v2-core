#!/usr/bin/env bash

FACTORY_ADDRESS="" # fill properly

. .env

echo -n "INIT_CODE_HASH="
cast call "$FACTORY_ADDRESS" "INIT_CODE_HASH()(bytes32)" --rpc-url "$RPC_URL" || exit 1

cast send "$FACTORY_ADDRESS" "setFeeTo(address)" "$FEE_COLLECTION_ADDRESS" --rpc-url "$RPC_URL" --private-key "$PRIVATE_KEY" || exit 1

echo -n "FEE_TO="
cast call "$FACTORY_ADDRESS" "feeTo()(address)" --rpc-url "$RPC_URL" || exit 1
