resource "google_storage_notification" "main" {
  bucket         = var.bucket
  payload_format = "JSON_API_V1"
  topic          = var.topic
  event_types    = ["OBJECT_FINALIZE", "OBJECT_METADATA_UPDATE"]
  depends_on = [google_pubsub_topic_iam_binding.binding]
}

data "google_storage_project_service_account" "gcs_account" {
}

resource "google_pubsub_topic_iam_binding" "binding" {
  topic   = var.topic
  role    = "roles/pubsub.publisher"
  members = ["serviceAccount:${data.google_storage_project_service_account.gcs_account.email_address}"]
}