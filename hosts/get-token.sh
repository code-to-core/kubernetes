#!/bin/bash

#assumes a service account called admin_user has been set up and that 
#user has been allocated to the cluster-admin role

# the script called install_dashboard will take care of setting up the user 

kubectl -n kube-system describe secret $(
  kubectl -n kube-system get secret | \
  awk '/^admin-user-token-/{print $1}'
) | \
awk '$1=="token:"{print $2}'
