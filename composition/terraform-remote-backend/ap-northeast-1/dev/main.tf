########################################
# GCP Terraform backend composition
########################################

module "terraform_remote_backend" {
  source   = "../../../../infrastructure_modules/terraform_remote_backend"
  ########################################
  ## CloudRun
  ########################################
  service_name = var.service_name
  location = var.location
  image = var.image

  ########################################
  ## GCP project
  ########################################
  project_id = var.project_id

  ########################################
  ## PubSub topic
  ########################################
  topic_name = var.topic_name

  ########################################
  ## PubSub subscription
  ########################################
  subscription_name = var.subscription_name
  endpoint = var.endpoint

  ########################################
  ## Cloud Storage
  ########################################
  backet_name = var.backet_name

  ########################################
  ## Service Account
  ########################################
  service_account_id = var.service_account_id
  display_name = var.display_name
}
