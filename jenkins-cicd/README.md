# **Bluebird Go App - CI/CD Pipeline using Jenkins**

This repository contains a **Jenkins CI/CD pipeline** designed for a **Golang-based application**. The pipeline automates the entire software delivery lifecycle, ensuring that the application is tested, secured, built, and deployed efficiently.

## **Pipeline Stages Overview**

The pipeline consists of several key stages:

### **1. Checkout Source Code**  
- Retrieves the latest source code from the Git repository.
- Ensures that the correct branch and commit are used for the build.

### **2. Unit Test & Coverage**  
- Runs Golang unit tests using `go test`.
- Generates a test coverage report to evaluate code quality.

### **3. Build Go Application**  
- Builds the Go binary executable.
- Ensures the application compiles without errors before packaging.

### **4. Build & Push Docker Image**  
- Creates a Docker image of the Go application.
- Pushes the built image to a specified Docker registry.

### **5. Kubernetes Linting (kube-linter)**  
- Validates Kubernetes manifests against best practices.
- Detects common misconfigurations that could impact security or performance.

### **6. Static Code Analysis (golangci-lint)**  
- Analyzes the Go source code for potential bugs, style violations, and performance issues.
- Helps maintain clean and maintainable code.

### **7. OWASP ZAP Security Scan**  
- Performs an automated security scan on the deployed application.
- Detects vulnerabilities such as SQL injection, XSS, and security misconfigurations.

### **8. Security Scan - Container & Dependencies**  
- Scans the Docker container for vulnerabilities using Trivy.
- Identifies outdated or insecure dependencies within the application.

### **9. Generate SBOM (Software Bill of Materials)**  
- Creates an SBOM using Syft to track all dependencies.
- Helps with software supply chain security and vulnerability tracking.

### **10. Deployment to Kubernetes**  
- Updates the Kubernetes deployment with the latest Docker image.
- Ensures a smooth and automated rollout of the application.

## **Conclusion**  
This pipeline automates testing, security validation, and deployment to provide a **robust, secure, and efficient** CI/CD workflow for Golang applications.  