# Microservices-based E-commerce Application Deployment with Kubernetes

This repository contains configurations and setup for deploying a microservices-based e-commerce application using Kubernetes. The project includes Kubernetes YAML files for resource definitions such as deployments, services, namespaces, and Istio configurations, along with a Docker Compose setup for local development.

## Features

- **Modular Microservices Architecture**: The application follows a microservices architecture, with separate services for order management, shipping, and communication via RabbitMQ.
- **Scalability and Fault Tolerance**: Utilizes Kubernetes for orchestrating and managing containerized application components, ensuring scalability and fault tolerance.
- **Traffic Management with Istio**: Integrates Istio for advanced traffic management, including gateway and virtual service configurations for routing incoming requests.
- **Local Development Environment**: Provides a Docker Compose setup for local development and testing, allowing developers to work in an environment similar to production.

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

## Usage

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/kubernetes-finalproject.git
    ```
2. Apply Kubernetes configurations:
    ```bash
    cd kubernetes-finalproject
    ./apply-all.sh
    ```
3. Optionally, use Docker Compose for local development:
    ```bash
    docker-compose up
    ```

## Links

- [Order Service Docker Image](https://github.com/wussh/a433-microservices/pkgs/container/a433-microservices/141232964?tag=order-service)
- [Shipping Service Docker Image](https://github.com/wussh/a433-microservices/pkgs/container/a433-microservices/141240238?tag=shipping-service)
