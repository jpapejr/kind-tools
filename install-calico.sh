#! /bin/bash
# This script installs Calico CNI with a relaxed RPF check
kubectl apply -f https://docs.projectcalico.org/v3.9/manifests/calico.yaml
kubectl -n kube-system set env daemonset/calico-node FELIX_IGNORELOOSERPF=true
