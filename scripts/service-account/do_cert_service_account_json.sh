#!/usr/bin/env bash

NODE_NAME="service-account"

cat > ${NODE_NAME}_csr.json <<EOF
{
      "CN": "${NODE_NAME}",
      "key" : {
            "algo" : "rsa",
            "size" : 2048
      },
      "names" : [
              {
                  "C"  : "IN",
                  "L"  : "Bengaluru",
                  "O"  : "Strikr",
                  "OU" : "kubernetes",
                  "ST" : "Karnataka"
              }
      ]
}
EOF



# STRIKR commentary
#
# generate JSON for service-account CSR.
#
