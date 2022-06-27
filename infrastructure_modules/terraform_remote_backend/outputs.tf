output "cloud_registry_api" {
  description = "The name of the table"
  value = module.gcr_api_terraform_backend
}

output "cloud_registry_job" {
  description = "The name of the table"
  value = module.gcr_api_terraform_backend
}

output "cloud_run" {
  description = "The name of the table"
  value = module.gcr_job_terraform_backend
}

output "pubsub_topic" {
  description = "The name of the table"
  value = module.pubsub_topic_terraform_backend
}

output "pubsub_subscription" {
  description = "The name of the table"
  value = module.pubsub_subscription_terraform_backend
}

output "cloud_storage" {
  description = "The name of the table"
  value = module.cloud_storage_terraform_backend
}

output "cloud_storage_notifications" {
  description = "The name of the table"
  value = module.cloud_storage_notifications_terraform_backend
}
