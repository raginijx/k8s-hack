#!/usr/bin/env bash

cfssl gencert \
  -ca=ca.pem \
  -ca-key=ca-key.pem \
  -config=ca_config.json \
  -profile=kubernetes \
  kube-proxy_csr.json | cfssljson -bare kube-proxy

# STRIKR commentary
#
# generate kube-proxy certificates
