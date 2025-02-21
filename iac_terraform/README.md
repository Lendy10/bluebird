# 🚀 AWS Infrastructure Deployment Using Terraform and Terragrunt

## Introduction

This document outlines the DevOps initiative for **Bluebird**, focusing on deploying a robust AWS infrastructure using **Terraform and Terragrunt**. The objective of this project is to ensure **high availability, scalability, and security** through Infrastructure as Code (IaC) while optimizing cloud resource management.

## Overview

This project leverages **Terraform** along with **Terragrunt** to provision and manage AWS infrastructure components such as **VPC, subnets, route tables, internet gateway, security groups, and instances**. **Terragrunt** enhances configuration management and state handling, ensuring a modular and scalable deployment.

## Infrastructure Componentss

- **VPC**: A Virtual Private Cloud to securely isolate and manage AWS resources.
- **Subnets**: Configured for different security and accessibility requirements.
- **Internet Gateway**: Facilitates internet connectivity for public-facing services.
- **Route Table**: Manages routing rules between subnets and internet gateway.
- **Security Group**: Defines inbound and outbound traffic rules for instances.
- **Instance Module**: Deploys EC2 instances with predefined security groups and networking configurations.

## Instance Module

- **AMI Configuration**: Uses a pre-configured Amazon Machine Image (AMI) for consistency.
- **Instance Type**: Configurable to meet workload requirements.
- **Security Group Association**: Ensures the instance follows defined firewall rules.
- **Elastic IP (Optional)**: Provides a static public IP if required.
- **User Data**: Bootstraps necessary software and dependencies during instance launch.

## Terraform Backend Configuration

- **State Locking**: Prevents concurrent modifications, ensuring infrastructure stability.
- **State Security**: Encrypts and securely stores Terraform state, limiting unauthorized access.

## Terragrunt Usage

- **DRY Code Base**: Reduces duplication using shared configurations.
- **Remote State Management**: Automates state storage and access control.
- **Modular Dependencies**: Enhances infrastructure maintainability and scalability.

## Project Structure

Each component is modularized to **simplify management, updates, and scalability**, ensuring seamless development and operations.

## How to Deploy

Navigate to the respective module directory and execute the following **Terragrunt** commands:
- `terragrunt plan` - Reviews proposed infrastructure changes.
- `terragrunt run-all apply` - Deploys the changes to provision the AWS resources.

## Conclusion

This setup establishes a **resilient AWS infrastructure** for **Bluebird**, integrating best practices in **automation, security, and scalability** to support efficient cloud operations.

---

This version reflects **Bluebird's** DevOps goals while keeping only the relevant modules and including an instance module explanation. Let me know if you need any refinements! 🚀