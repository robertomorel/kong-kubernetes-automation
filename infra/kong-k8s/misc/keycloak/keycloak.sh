#!/bin/bash

# Implementação certificada de OpenId connect.
# Especificação que fala sobre como lidar com autenticação, sessão e controle de usuários, token
# Pode controlar ciclo de vide de usuários e da aplicação
kubectl create ns iam
helm install keycloak bitnami/keycloak --set auth.adminUser=keycloak,auth.adminPassword=keycloak --namespace iam
