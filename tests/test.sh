#!/usr/bin/env bash

source ./tests/setup/env_init.sh

echo "================================================="
echo " List installed plugins"
echo "================================================="

curl -vs 'https://localhost:9200/_cat/plugins?v' \
  --cacert ${TMP_DIR}/search-guard-ssl/example-pki-scripts/ca/chain-ca.pem \
  --cert ${TMP_DIR}/search-guard-ssl/example-pki-scripts/kirk.crt.pem \
  --key  ${TMP_DIR}/search-guard-ssl/example-pki-scripts/kirk.key.pem


echo "================================================="
echo " Try Prometheus REST endpoint as kirk user"
echo "================================================="

curl -vsS 'https://localhost:9200/_prometheus/metrics' \
  --cacert ${TMP_DIR}/search-guard-ssl/example-pki-scripts/ca/chain-ca.pem \
  --cert ${TMP_DIR}/search-guard-ssl/example-pki-scripts/kirk.crt.pem \
  --key  ${TMP_DIR}/search-guard-ssl/example-pki-scripts/kirk.key.pem

echo "================================================="
echo " Try Prometheus REST endpoint as worf user"
echo "================================================="

curl -vsS --insecure -u worf:worf 'https://localhost:9200/_prometheus/metrics'
