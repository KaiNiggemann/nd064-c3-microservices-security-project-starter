#!/bin/bash -e

for namespace in $(kubectl get namespaces -A -o json | jq -r '.items[].metadata.name'); do
  kubectl apply -f default-allow-all.yaml -n ${namespace}
done
