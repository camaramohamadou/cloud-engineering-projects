variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
}

variable "name" {
  description = "Name of the Cloud Function"
  type        = string
}

variable "runtime" {
  description = "Runtime for the Cloud Function"
  type        = string
  default     = "python39"
}

variable "entry_point" {
  description = "Entry point for the Cloud Function"
  type        = string
}

variable "location" {
  description = "Region where the Cloud Function will be deployed"
  type        = string
}

variable "source_archive_path" {
  description = "Path to the source archive (zip file) for the Cloud Function"
  type        = string
}

variable "topic_name" {
  description = "Name of the Pub/Sub topic"
  type        = string
}

variable "cloud_run_url" {
  description = "URL of the Cloud Run service"
  type        = string
}
