# Cloud Engineering Projects

This repository contains a collection of projects demonstrating cloud infrastructure setup, automation, and management using Google Cloud Platform (GCP) and Terraform. Each project is designed to showcase different aspects of cloud engineering, from serverless applications to infrastructure as code (IaC).

## Projects

### 1. Serverless Application with Cloud Run and Cloud Functions

**Description**: This project demonstrates how to set up and manage a serverless application on GCP using Terraform. It includes creating a Cloud Run service for hosting a containerized application and a Cloud Function that triggers based on Pub/Sub events. This setup showcases automation, integration, and management of cloud resources using Terraform.

**Technologies**:
- Google Cloud Run
- Google Cloud Functions
- Google Cloud Pub/Sub
- Terraform

**Project Structure**:
- **`cloud_function/`**: Contains the source code for the Cloud Function.
- **`cloud_run/`**: Contains the source code and Dockerfile for the Cloud Run service.
- **`modules/cloud_run/`**: Terraform module for creating the Cloud Run service.
- **`modules/cloud_functions/`**: Terraform module for creating the Cloud Function and related resources.
- **`main.tf`**: Main Terraform configuration file that orchestrates the modules.
- **`variables.tf`**: Variable definitions for the Terraform configuration.
- **`outputs.tf`**: Output definitions for the Terraform configuration.
- **`backend.tf`**: Terraform backend configuration for storing the state in Google Cloud Storage (GCS).
- **`terraform.tfvars`**: Variable values for the Terraform configuration.