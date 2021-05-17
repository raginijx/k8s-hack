#!/usr/bin/env bash

NODE_NAME="api-server"


cat > ${NODE_NAME}_csr.json <<EOF
{
      "CN"  : "kubernetes",
      "key" : {
            "algo" : "rsa",
            "size" : 2048
      },
      "names" : [
              {
                  "C"  : "IN",
                  "L"  : "Bengaluru",
                  "O"  : "kubernetes",
                  "OU" : "Strikr",
                  "ST" : "Karnataka"
              }
      ]
}
EOF



# STRIKR commentary
#
# generate JSON for api-server
#
