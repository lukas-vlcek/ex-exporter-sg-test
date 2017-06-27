#!/usr/bin/env bash

source ./tests/setup/env_init.sh

echo "================================================="
echo " Testing script"
echo "================================================="

curl -vs 'https://localhost:9200/_cat/nodes?v' \
  --cacert ${TMP_DIR}/search-guard-ssl/example-pki-scripts/ca/chain-ca.pem \
  --cert ${TMP_DIR}/search-guard-ssl/example-pki-scripts/kirk.crt.pem \
  --key  ${TMP_DIR}/search-guard-ssl/example-pki-scripts/kirk.key.pem
