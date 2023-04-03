#!/bin/bash

# Criar um cluster com a configuração definida
kind create cluster --name kong-fc --config clusterconfig.yaml
# Fazendo o kubectl apontar para o cluster
kubectl cluster-info --context kind-kong-fc

###################################################
## /.kind.sh para criar o cluster e iniciar o kubectl
