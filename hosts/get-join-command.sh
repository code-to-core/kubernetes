#!/bin/bash

kubeadm token create --print-join-command > join-command.sh

cat join-command.sh

echo "The join command has been written to join-command.sh, run this on other nodes in order to join the cluster"
