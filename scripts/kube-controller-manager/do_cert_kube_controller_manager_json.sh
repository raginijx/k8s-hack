#!/usr/bin/env bash


NODE_NAME="kube-controller-manager"


cat > ${NODE_NAME}_csr.json <<EOF
{
      "CN" : "system:${NODE_NAME}",
      "key": {
             "algo" : "rsa",
             "size" : 2048
      },
      "names" : [
            {
                  "C": "IN",
                  "L": "Bengaluru",
                  "O": "system:${NODE_NAME}",
                  "OU": "Strikr",
                  "ST": "Karnataka"
            }
      ]
}
EOF


# STRIKR commentary
#
