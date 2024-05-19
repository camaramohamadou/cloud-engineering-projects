resource "google_cloudfunctions_function" "function" {
  name        = var.name
  runtime     = var.runtime
  entry_point = var.entry_point
  source_archive_bucket = google_storage_bucket.source_bucket.name
  source_archive_object = google_storage_bucket_object.source_archive.name
  trigger_http = true
  available_memory_mb = 256

  event_trigger {
    event_type = "providers/cloud.pubsub/eventTypes/topic.publish"
    resource   = google_pubsub_topic.topic.id
  }

  environment_variables = {
    CLOUD_RUN_URL = var.cloud_run_url
  }
}

resource "google_storage_bucket" "source_bucket" {
  name     = "${var.project_id}-functions-source"
  location = var.location
}

resource "google_storage_bucket_object" "source_archive" {
  name   = "${var.name}.zip"
  bucket = google_storage_bucket.source_bucket.name
  source = var.source_archive_path
}

resource "google_pubsub_topic" "topic" {
  name = var.topic_name
}

output "function_url" {
  value = google_cloudfunctions_function.function.https_trigger_url
}
