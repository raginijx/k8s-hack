#!/usr/bin/env bash

NODE_NAME="api-server"

API_SERVER_ALIASES="kubernetes,kubernetes.default,kubernetes.default.svc,kubernetes.default.svc.cluster,kubernetes.svc.cluster.local"

FILE_CONFIG=ca_config.json
FILE_CA_KEY=ca-key.pem
FILE_CA=ca.pem
FILE_NODE_CSR=${NODE_NAME}_csr.json

cfssl gencert  \
      -loglevel=0  \
      -config=${FILE_CONFIG}  \
      -ca-key=${FILE_CA_KEY}  \
      -ca=${FILE_CA}          \
      -profile=kubernetes     \
      -hostname=${NODE_NAME},${API_SERVER_ALIASES},127.0.0.1  \
      ${FILE_NODE_CSR}  |  cfssljson -bare ${NODE_NAME}



# STRIKR commentary
#
# generate kubernetes api-server certificate and key.
#
# FIXME
# evaluate the impact of using -bare option
# as ${NODE_NAME} vs 'kubernetes'
#
