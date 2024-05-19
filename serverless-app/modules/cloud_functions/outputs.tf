output "function_url" {
  description = "URL of the Cloud Function"
  value       = google_cloudfunctions_function.function.https_trigger_url
}
