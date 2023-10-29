#!/bin/bash

# Apply the namespace
kubectl apply -f namespace.yaml

# Apply other resources
kubectl apply -f rabbitmq.yaml
kubectl apply -f orderservice.yaml
kubectl apply -f shippingservice.yaml
