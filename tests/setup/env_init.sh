#!/usr/bin/env bash

export IS_ES_SECURED=${IS_ES_SECURED:-true}
export ES_VER=${ES_VER:-2.4.4}
export SG_VER=${SG_VER:-2.4.4.10}
export SG_SSL_VER=${SG_SSL_VER:-2.4.4.19}
export TMP_DIR=${TMP_DIR:-/tmp}
export ES_HOME=${ES_HOME:-$TMP_DIR/elasticsearch}
export ES_CONF=${ES_CONF:-./tests/conf}
