# Kubernetes Final Project

This project contains Kubernetes configurations and Docker Compose setup for deploying a microservices-based e-commerce application.

## Project Structure

- `apply-all.sh`: Bash script to apply all Kubernetes configurations.
- `docker-compose.yml`: Docker Compose configuration for local development.
- `istio-gateway.yaml`: Configuration for Istio Gateway and VirtualService.
- `link.txt`: Links to Docker images and related repositories.
- `namespace.yaml`: Kubernetes Namespace definition.
- `orderservice.yaml`: Kubernetes configurations for the order service.
- `rabbitmq.yaml`: Kubernetes configurations for RabbitMQ.
- `shippingservice.yaml`: Kubernetes configurations for the shipping service.

## Docker Compose Setup

The `docker-compose.yml` file defines services for RabbitMQ, order service, and shipping service. It also sets up networking using a custom bridge network.

## Kubernetes Configurations

### Namespace

Defines a Kubernetes Namespace named `wussh` for isolating project resources.

### RabbitMQ

- Deployment and Service configurations for RabbitMQ.
- Exposes port 5672 for communication.

### Order Service

- Deployment, Service, and ServiceAccount configurations for the order service.
- Exposes port 3000.
- Depends on RabbitMQ.
- Environment variables set for connection.

### Shipping Service

- Deployment, Service, and ServiceAccount configurations for the shipping service.
- Exposes port 3001.
- Depends on RabbitMQ.
- Environment variables set for connection.

### Istio Gateway and VirtualService

Defines an Istio Gateway for ingress traffic and a VirtualService to route traffic to the order service.

## Links

- [Order Service Docker Image](https://github.com/wussh/a433-microservices/pkgs/container/a433-microservices/141232964?tag=order-service)
- [Shipping Service Docker Image](https://github.com/wussh/a433-microservices/pkgs/container/a433-microservices/141240238?tag=shipping-service)
