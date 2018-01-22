#!/bin/bash

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.9.1/Documentation/kube-flannel.yml

#sudo kubekubeadm join --token 68907b.d34ff47d9df15729 10.0.2.15:6443 --discovery-token-ca-cert-hash sha256:2b3d456c3b9101cda34c37c63f7d46021d5c8d107a6e7c332c558e2d2e061f5f"
