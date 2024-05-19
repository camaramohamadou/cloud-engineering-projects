output "cloud_run_url" {
  description = "URL of the Cloud Run service"
  value       = module.cloud_run.cloud_run_url
}

output "function_url" {
  description = "URL of the Cloud Function"
  value       = module.cloud_functions.function_url
}
