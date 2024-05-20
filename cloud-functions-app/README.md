# Cloud Functions Application

This project demonstrates how to set up and manage a serverless function on Google Cloud Platform (GCP) using Cloud Functions and Terraform. The function is triggered by Pub/Sub events and can perform tasks such as making HTTP requests.

## Project Structure


- **`src/`**: Contains the source code for the Cloud Function.
- **`terraform/`**: Contains the Terraform configuration files for deploying the Cloud Function.
- **`README.md`**: This file.
- **`LICENSE`**: License file.

## Purpose

The purpose of this project is to demonstrate how to:

1. Automate infrastructure deployment using Terraform.
2. Leverage serverless technologies on GCP with Cloud Functions.
3. Integrate Cloud Functions with Pub/Sub for event-driven architecture.

## Setup

### Prerequisites

- Python 3.8 or higher
- `pip` (Python package installer)
- Google Cloud SDK
- Terraform

- zip -r function-source.zip main.py
- terraform init
- terraform plan -var-file="terraform/terraform.tfvars"
- terraform apply -var-file="terraform/terraform.tfvars"
