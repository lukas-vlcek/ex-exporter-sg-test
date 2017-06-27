#!/bin/bash

set -euxo pipefail

source ./tests/setup/env_init.sh

echo "================================================="
echo " Setup elasticsearch-prometheus-exporter"
echo "================================================="

[[ -d ${ES_HOME}/bin/plugin/prometheus-exporter ]] && rm -rf ${ES_HOME}/bin/plugin/prometheus-exporter
${ES_HOME}/bin/plugin install https://github.com/vvanholl/elasticsearch-prometheus-exporter/releases/download/${PROMETHEUS_EXPORTER_VER}/elasticsearch-prometheus-exporter-${PROMETHEUS_EXPORTER_VER}.zip
