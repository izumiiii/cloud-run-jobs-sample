resource "google_pubsub_subscription" "main" {
  name  = var.name
  topic = var.topic_name

  ack_deadline_seconds = 20

  push_config {
    push_endpoint = var.endpoint
  }
}