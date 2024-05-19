provider "google" {
  project = var.project_id
  region  = var.region
}

module "cloud_run" {
  source   = "./modules/cloud_run"
  name     = var.cloud_run_name
  location = var.region
  image    = var.cloud_run_image
}

module "cloud_functions" {
  source               = "./modules/cloud_functions"
  name                 = var.cloud_function_name
  runtime              = var.cloud_function_runtime
  entry_point          = var.cloud_function_entry_point
  location             = var.region
  source_archive_path  = var.cloud_function_source_archive_path
  topic_name           = var.pubsub_topic_name
  cloud_run_url        = module.cloud_run.cloud_run_url
  project_id           = var.project_id
}

output "cloud_run_url" {
  value = module.cloud_run.cloud_run_url
}

output "function_url" {
  value = module.cloud_functions.function_url
}
