resource "google_container_registry" "this" {
  project  = var.project_id
  location = "ASIA"
}
