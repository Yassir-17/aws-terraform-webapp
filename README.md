# Automated Infrastructure Deployment Using Terraform and GitHub Actions (CI/CD)

![Terraform](https://img.shields.io/badge/IaC-Terraform-blue) ![GitHub Actions](https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-orange)

## Overview

This project automates the deployment of a web application on AWS using **Terraform** and **GitHub Actions**. The repository includes modular Terraform scripts and a CI/CD pipeline, enabling scalable and repeatable infrastructure deployment.

---

## Features

- **Automated AWS Infrastructure Provisioning**
- **CI/CD Pipeline Integration with GitHub Actions**
- **Modular and Scalable Terraform Configuration**
- **Secure Deployment with Best Practices**

---

## Architecture

### Infrastructure Components
- **VPC:** Custom Virtual Private Cloud with 2 public in different AZs.
- **Compute:** Two EC2 instances.
- **Load Balancer:** Application Load Balancer for traffic distribution.

### CI/CD Pipeline
The pipeline leverages GitHub Actions to:
- Initialize Terraform
- Plan and apply changes
- Automate infrastructure deployments

---

## Project Structure

```plaintext
aws-terraform-webapp/
├── .github/
│   └── workflows/
│       └── deployment.yaml     # GitHub Actions CI/CD workflow
├── Terraform-aws/
│   ├── provider.tf             # Terraform Providers
│   ├── main.tf                 # Main Terraform configuration
│   ├── variables.tf            # Terraform variables
│   ├── terraform.tfvars        # Terraform variables
│   ├── outputs.tf              # Terraform outputs
│   └── modules/                # Modularized Terraform scripts
├── .gitignore                  # Files to ignore in Git
├── README.md                   # Documentation

## Getting Started

### Prerequisites

- **AWS Account:** Ensure you have valid AWS credentials.
- **Terraform:** Install Terraform on your local machine If you want to run the Terraform code locally.

---

### Deployment Instructions

#### Clone the Repository
```bash
git clone https://github.com/Yassir-17/aws-terraform-webapp.git
cd aws-terraform-webapp
---

### Run Terraform Locally (Optional)

```bash
cd Terraform-aws
terraform init
terraform plan
terraform apply

### Trigger GitHub Actions Workflow

1. Push changes to the `main` branch.
2. View the deployment progress under the **Actions** tab on GitHub.

---

## Contributing

Contributions are welcome! Please:

- Open issues for bug reports or feature requests.
- Submit pull requests.

---

## License

This project is licensed under the [MIT License](LICENSE).

---

## Acknowledgments

- **Terraform** community for providing reusable modules.
- **GitHub Actions** for simplifying CI/CD automation.

