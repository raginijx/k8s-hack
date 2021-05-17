#!/usr/bin/env bash

NODE_NAME="kubelet_01"

cat > ${NODE_NAME}_csr.json <<EOF
{
  "CN": "system:node:${NODE_NAME}",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "IN",
      "L": "Bengaluru",
      "O": "system:nodes",
      "OU": "Strikr",
      "ST": "Karnataka"
    }
  ]
}
EOF



# STRIKR commentary
#
# generate JSON for kubelet client CSR.
# CN: "system-node:"  (must begin with)
# "O": "system:nodes" (must be as is)
#
