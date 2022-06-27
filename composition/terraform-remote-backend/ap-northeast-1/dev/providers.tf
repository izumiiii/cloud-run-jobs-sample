terraform {
  required_version = "0.14.4"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.25.0"
    }
    # 必要に応じて記載(今回は不要)
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "4.5.0"
    }
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
}