#!/usr/bin/env bash

FILE_CSR=ca_csr.json
FILE_CA=ca_config.json

#cfssl gencert -initca ${FILE_CSR} | cfssljson -bare ca

cfssl gencert -initca -config="${FILE_CA}" -loglevel=0 ${FILE_CSR} | cfssljson -bare ca



# STRIKR commentary
#
# dump the PEM file using the following commands
# openssl x509 -in ca.pem -text
# 
