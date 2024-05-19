variable "name" {
  description = "Name of the Cloud Run service"
  type        = string
}

variable "location" {
  description = "Region where the Cloud Run service will be deployed"
  type        = string
}

variable "image" {
  description = "Container image for the Cloud Run service"
  type        = string
}
