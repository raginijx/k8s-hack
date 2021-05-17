cat > kube-proxy_csr.json <<EOF
{
  "CN": "system:kube-proxy",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "IN",
      "L": "Bengaluru",
      "O": "system:node-proxier",
      "OU": "Strikr",
      "ST": "Karnataka"
    }
  ]
}
EOF

# STRIKR commentary
#
# generate JSON for kube-proxy client CSR.
