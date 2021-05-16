#!/usr/bin/env bash



VER_CFSSL=1.4.1

wget https://storage.googleapis.com/kubernetes-the-hard-way/cfssl/${VER_CFSSL}/linux/cfssl
wget https://storage.googleapis.com/kubernetes-the-hard-way/cfssl/${VER_CFSSL}/linux/cfssljson



VER_ETCD=3.4.15

wget https://github.com/etcd-io/etcd/releases/download/v${VER_ETCD}/etcd-v${VER_ETCD}-linux-amd64.tar.gz



VER_K8S=1.21.1

wget https://storage.googleapis.com/kubernetes-release/release/v${VER_K8S}/bin/linux/amd64/kubeadm

wget https://storage.googleapis.com/kubernetes-release/release/v${VER_K8S}/bin/linux/amd64/kubectl

wget https://storage.googleapis.com/kubernetes-release/release/v${VER_K8S}/bin/linux/amd64/kube-apiserver
wget https://storage.googleapis.com/kubernetes-release/release/v${VER_K8S}/bin/linux/amd64/kube-scheduler
wget https://storage.googleapis.com/kubernetes-release/release/v${VER_K8S}/bin/linux/amd64/kube-controller-manager

wget https://storage.googleapis.com/kubernetes-release/release/v${VER_K8S}/bin/linux/amd64/kubelet
wget https://storage.googleapis.com/kubernetes-release/release/v${VER_K8S}/bin/linux/amd64/kube-proxy

wget https://storage.googleapis.com/kubernetes-release/release/v${VER_K8S}/bin/linux/amd64/kube-aggregator



VER_CNI=0.9.1

wget https://github.com/containernetworking/plugins/releases/download/v${VER_CNI}/cni-plugins-linux-amd64-v${VER_CNI}.tgz



VER_COREDNS=1.8.3

wget https://github.com/coredns/coredns/releases/download/v${VER_COREDNS}/coredns_${VER_COREDNS}_linux_amd64.tgz



VER_DOCKER=20.10.6

wget https://download.docker.com/linux/static/stable/x86_64/docker-${VER_DOCKER}.tgz



VER_CONTAINERD=1.5.0

wget https://github.com/containerd/containerd/releases/download/v${VER_CONTAINERD}/containerd-${VER_CONTAINERD}-linux-amd64.tar.gz



exit 0;



# STRIKR commentary
#
# software binaries required to setup k8s manually
#
