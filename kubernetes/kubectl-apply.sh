#!/bin/bash
# Files are ordered in proper order with needed wait for the dependent custom resource definitions to get initialized.
# Usage: bash kubectl-apply.sh

logSummary(){
    echo ""
    echo "#####################################################"
    echo "Please find the below useful endpoints,"
    echo "Gateway - http://store.dev-hih-01.demo.polarpoint.io"
    echo "Zipkin - http://zipkin.istio-system.demo.polarpoint.io"
    echo "Grafana - http://grafana.istio-system.demo.polarpoint.io"
    echo "Kiali - http://kiali.istio-system.demo.polarpoint.io"
    echo "#####################################################"
}

kubectl apply -f namespace.yml
kubectl label namespace dev-hih-01 istio-injection=enabled --overwrite=true
kubectl apply -f store/
kubectl apply -f invoice/
kubectl apply -f notification/
kubectl apply -f product/

kubectl apply -f istio/
logSummary
