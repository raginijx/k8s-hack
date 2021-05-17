#!/usr/bin/env bash


NODE_NAME="kube-controller-manager"

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
      ${FILE_NODE_CSR}  |  cfssljson -bare ${NODE_NAME}



# STRIKR commentary
#
# generate kube-controller-manager certificate and key.
