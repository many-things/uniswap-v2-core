#!/usr/bin/env bash

. .env

forge create UniswapV2Factory --contracts contracts/UniswapV2Factory.sol \
  --constructor-args "$ADMIN_ADDRESS" \
  --rpc-url "$RPC_URL" \
  --private-key "$PRIVATE_KEY"  || exit 1

