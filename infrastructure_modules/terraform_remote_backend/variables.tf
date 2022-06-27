variable "project_id" {
  description = "GCP project unique project_id"
  type        = string
}

variable "topic_name" {
  description = "PubSub topic name"
  type        = string
}

variable "subscription_name" {
  description = "PubSub subscription name"
  type        = string
}

variable "backet_name" {
  description = "CloudStorage backet name"
  type        = string
}

variable "location" {
  description = "CloudRun location"
  type = string
}

variable "service_name" {
  description = "CloudRun service name"
  type = string
}

variable "service_account_id" {
  description = "Service account id"
  type        = string
}

variable "display_name" {
  description = "Service account display name"
  type        = string
}

variable "image" {
  description = "Cloud Run Image"
  type        = string
}

variable "endpoint" {
  description = "PubSub Subscription push endpoint"
  type = string
}