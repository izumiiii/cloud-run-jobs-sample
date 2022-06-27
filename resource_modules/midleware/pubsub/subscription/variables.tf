variable "name" {
  description = "Subscription name"
  type        = string
}

variable "topic_name" {
  description = "Created topic name"
  type        = string
}

variable "endpoint" {
  description = "PubSub Subscription push endpoint(CloudRun service endpoint)"
  type = string
}
