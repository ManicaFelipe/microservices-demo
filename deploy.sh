#!/bin/bash


# minikube start --cpus=4 --memory 4096 --disk-size 32g --container-runtime=docker

minikube kubectl -- apply -f ./kubernetes-manifests/emailservice.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/productcatalogservice.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/recommendationservice.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/shippingservice.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/checkoutservice.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/paymentservice.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/currencyservice.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/cartservice.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/frontend.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/adservice.yaml  
minikube kubectl -- apply -f ./kubernetes-manifests/loadgenerator.yaml
minikube kubectl -- apply -f ./kubernetes-manifests/redis.yaml

kubectl port-forward deployment/frontend 8080:8080
kubectl get service/frontend-external