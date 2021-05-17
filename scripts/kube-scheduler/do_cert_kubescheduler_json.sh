#!/usr/bin/env bash

cat > kube-scheduler_csr.json <<EOF
{
  "CN": "system:kube-scheduler",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "IN",
      "L": "Bengaluru",
      "O": "system:kube-scheduler",
      "OU": "Strikr",
      "ST": "Karnataka"
    }
  ]
}
EOF

# STRIKR commentary
# 
# generated JSON for kube-scheduler client CSR.
