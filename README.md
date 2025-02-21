# 🚀 Bluebird DevOps Repository 🐦

This repository contains infrastructure-as-code (IaC) and automation scripts for **Bluebird's DevOps** initiatives. It is structured into four key components: **Terraform modules, Ansible playbooks, Helm charts, and Jenkins CI/CD scripts**. These components ensure a **scalable, automated, and well-monitored** cloud infrastructure.

## 📂 Repository Structure

```
.
├── iac_terraform_aws/      # Reusable Terraform modules for cloud resources
├── ansible-playbook/      # Ansible playbooks for server provisioning and configuration
├── helm-chart/            # Helm charts for Kubernetes application deployment
└── jenkins-cicd/         # Jenkins pipelines for CI/CD automation
```

---

## 📌 Infrastructure as Code with Terraform (`terraform-module/`)

This directory contains **Terraform modules** for provisioning **virtual machines (VMs)** in the cloud. These modules are reusable and configurable to deploy VM instances efficiently.

### Features:
- **Modular VM provisioning**: Define infrastructure for different environments (dev, staging, production).
- **Network configuration**: Define security groups, VPC, and subnets.
- **State management**: Backend storage for Terraform state.
- **Scalability**: Can be extended to deploy multiple instances.
---

## ⚙️ Configuration Management with Ansible (`ansible-playbook/`)

This directory contains **Ansible playbooks** for configuring cloud instances, particularly for installing and managing **Nginx**.

### Features:
- **Automated Nginx installation**: Ensures consistent configuration across multiple servers.
- **Configurable Nginx setup**: Supports custom configurations for different environments.
- **Idempotent deployment**: Playbooks can be run multiple times without unintended side effects.

### Usage:
Run the playbook on a provisioned VM:
```sh
cd ansible-playbook
ansible-playbook -i inventory nginx-playbook.yml
```

---

## 🎛 Kubernetes Deployment with Helm (`helm-chart/`)

This directory contains **Helm charts** for deploying **Bluebird services** in a **Kubernetes cluster**.

### Features:
- **Configurable Helm templates**: Supports services, deployments, HPA, ingress, and configmaps.
- **Feature toggles**: Components can be enabled or disabled as needed.
- **Scalable architecture**: Ensures high availability and automated scaling.

### Usage:
Deploy services in Kubernetes:
```sh
cd helm-chart
helm install bluebird ./bluebird-chart
```

---

## 🔄 CI/CD Pipeline Automation (`jenkins-cicd/`)

This directory contains **Jenkins pipelines** for automating **build, test, security, and deployment** processes.

### Pipeline Stages:
1. **Unit Testing** - Runs tests before deployment.
2. **Build & Push Docker Image** - Packages the application into a Docker container and pushes it to a registry.
3. **OWASP Security Scan** - Scans for vulnerabilities.
4. **Container & Library Security Checks** - Ensures no critical dependencies are compromised.
5. **Deployment** - Deploys to the **Kubernetes cluster** or cloud environment.

### Usage:
Configure Jenkins and trigger a build:
```sh
cd jenkins-cicd
jenkins-job-run my-pipeline
```

---

## 🎯 Conclusion

This repository provides a **structured and automated approach** to managing **Bluebird’s** cloud infrastructure, ensuring **scalability, security, and operational efficiency**. It supports **multi-environment deployments**, automated configuration management, and **CI/CD best practices**.