# Serverless Application with Cloud Run and Cloud Functions

This project demonstrates how to set up and manage a serverless application on Google Cloud Platform (GCP) using Terraform. The project includes creating a Cloud Run service for hosting a containerized application and a Cloud Function that triggers based on Pub/Sub events. This setup showcases automation, integration, and management of cloud resources using Terraform.

## Project Structure


- **`cloud_function/`**: Contains the source code for the Cloud Function.
- **`cloud_run/`**: Contains the source code and Dockerfile for the Cloud Run service.
- **`modules/cloud_run/`**: Terraform module for creating the Cloud Run service.
- **`modules/cloud_functions/`**: Terraform module for creating the Cloud Function and related resources.
- **`main.tf`**: Main Terraform configuration file that orchestrates the modules.
- **`variables.tf`**: Variable definitions for the Terraform configuration.
- **`outputs.tf`**: Output definitions for the Terraform configuration.
- **`backend.tf`**: Terraform backend configuration for storing the state in Google Cloud Storage (GCS).
- **`terraform.tfvars`**: Variable values for the Terraform configuration.

## Purpose

The purpose of this project is to demonstrate how to:

1. Automate infrastructure deployment using Terraform.
2. Leverage serverless technologies (Cloud Run and Cloud Functions) on GCP.
3. Integrate GCP services (Cloud Run, Cloud Functions, Pub/Sub) to create a cohesive serverless application.
4. Manage infrastructure as code (IaC) with Terraform.

## Setup

### Prerequisites

- Python 3.8 or higher
- `pip` (Python package installer)
- Docker (for containerizing the application)
- Google Cloud SDK (for deploying to Google Cloud Run)
- Terraform

### Preparing the Cloud Function Source Code

1. **Create the `cloud_function` Directory and Python File**:

   ```bash
   mkdir -p cloud_function
   nano cloud_function/main.py
