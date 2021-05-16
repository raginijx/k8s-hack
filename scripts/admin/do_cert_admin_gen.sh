#!/usr/bin/env bash

FILE_CA=ca.pem
FILE_CA_KEY=ca-key.pem
FILE_CONFIG=ca_config.json
FILE_ADMIN_CSR=admin_csr.json

cfssl gencert -loglevel=0 -ca=${FILE_CA} -ca-key=${FILE_CA_KEY} -config=${FILE_CONFIG} -profile=kubernetes ${FILE_ADMIN_CSR} | cfssljson -bare admin

# STRIKR commentary
# 
# dump the PEM file using the following commands
# openssl x509 -in admin.pem -text
#
