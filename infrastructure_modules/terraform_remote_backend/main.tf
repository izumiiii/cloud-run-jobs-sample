module "project_service_terraform_backend" {
  source = "../../resource_modules/platform/project"
  project_id = var.project_id
}

module "gcr_api_terraform_backend" {
  source = "../../resource_modules/containers/registry"
  project_id = var.project_id
}

module "gcr_job_terraform_backend" {
  source = "../../resource_modules/containers/registry"
  project_id = var.project_id
}

module "cloud_run_terraform_backend" {
  source = "../../resource_modules/containers/cloudrun"
  service_name           = var.service_name
  project_id             = var.project_id
  location               = var.location
  image                  = var.image
}

module "pubsub_topic_terraform_backend" {
  source = "../../resource_modules/midleware/pubsub/topic"
  name = var.topic_name
}

module "pubsub_subscription_terraform_backend" {
  source = "../../resource_modules/midleware/pubsub/subscription"
  name = var.subscription_name
  topic_name = var.topic_name
  endpoint = var.endpoint
}

module "cloud_storage_terraform_backend" {
  source = "../../resource_modules/storage/cloudstorage/storage"
  name = var.backet_name
}

module "cloud_storage_notifications_terraform_backend" {
  source = "../../resource_modules/storage/cloudstorage/notifications"
  bucket = module.cloud_storage_terraform_backend.name
  topic = module.pubsub_topic_terraform_backend.id
}

module "service_account_terraform_backend" {
  source = "../../resource_modules/platform/service_account"
  service_account_id = var.service_account_id
  display_name = var.display_name
}
