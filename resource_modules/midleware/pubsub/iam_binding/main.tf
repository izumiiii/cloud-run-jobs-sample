resource "google_pubsub_topic_iam_binding" "binding" {
  topic   = var.topic_id
  role    = "roles/pubsub.publisher"
  members = ["serviceAccount:${var.email_address}"]
}