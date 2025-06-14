#!/bin/bash
set -e
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
cd $DIR

if [ -e stacks-node ]; then
  echo "The stacks node is already running, this is for fresh start"
  echo "If you need to reset and restore again, please stop daemons and remove ./stacks-node"
  exit 0
fi

mkdir stacks-node
cd stacks-node
curl https://archive.hiro.so/mainnet/stacks-blockchain/mainnet-stacks-blockchain-latest.tar.gz | tar -zxv
