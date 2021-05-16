#!/usr/bin/env bash

cat > admin_csr.json <<EOF
{
  "CN": "admin",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "IN",
      "L": "Bengaluru",
      "O": "Strikr",
      "OU": "Admin",
      "ST": "Karnataka"
    }
  ]
}
EOF
