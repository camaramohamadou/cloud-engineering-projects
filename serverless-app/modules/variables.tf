variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
}

variable "cloud_run_name" {
  description = "Name of the Cloud Run service"
  type        = string
}

variable "cloud_run_image" {
  description = "Container image for the Cloud Run service"
  type        = string
}

variable "cloud_function_name" {
  description = "Name of the Cloud Function"
  type        = string
}

variable "cloud_function_runtime" {
  description = "Runtime for the Cloud Function"
  type        = string
  default     = "python39"
}

variable "cloud_function_entry_point" {
  description = "Entry point for the Cloud Function"
  type        = string
}

variable "cloud_function_source_archive_path" {
  description = "Path to the source archive (zip file) for the Cloud Function"
  type        = string
}

variable "pubsub_topic_name" {
  description = "Name of the Pub/Sub topic"
  type        = string
}
