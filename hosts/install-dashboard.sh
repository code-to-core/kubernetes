#/bin/bash

#start the Dashboard
kubectl create -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml

# Load the service account 
kubectl create -f service-account.yaml

# bind the service account to the cluster-admin role
kubectl create -f cluster-role-binding.yaml

# run get-dashboard-token.sh to get the token used to login to the dashboard
