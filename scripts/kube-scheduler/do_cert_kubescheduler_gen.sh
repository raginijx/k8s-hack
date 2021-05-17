#!/usr/bin/env bash

cfssl gencert \
  -ca=ca.pem \
  -ca-key=ca-key.pem \
  -config=ca_config.json \
  -profile=kubernetes \
  kube-scheduler_csr.json | cfssljson -bare kube-scheduler

# STRIKR commentary
#
# generated kube-scheduler certificates
