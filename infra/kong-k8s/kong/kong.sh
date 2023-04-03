#!/bin/bash

# Criando namespace para o kong
kubectl create ns kong
# Instalando o kong
helm install kong kong/kong -f kong-conf.yaml --set proxy.type=NodePort,proxy.http.nodePort=30000,proxy.tls.nodePort=30003 --set ingressController.installCRDs=false --set serviceMonitor.enabled=true --set serviceMonitor.labels.release=promstack --namespace kong

###################################################
## /.kind.sh para criar o cluster e iniciar o kubectl
