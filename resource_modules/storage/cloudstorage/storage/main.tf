resource "google_storage_bucket" "this" {
  location = "ASIA-NORTHEAST1"
  name = var.name
}