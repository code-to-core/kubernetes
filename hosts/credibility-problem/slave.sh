#!/bin/bash


#mkdir -p $HOME/.kube
#sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
#sudo chown $(id -u):$(id -g) $HOME/.kube/config

#kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.9.1/Documentation/kube-flannel.yml

sudo kubeadm join --token 55af8b.478683b9f021067b 192.168.1.188:6443 --discovery-token-ca-cert-hash sha256:0270257187a0c6dcd380f1fe85c6f10ebeb929bc11f9afdb8ca4940ca7768c41
