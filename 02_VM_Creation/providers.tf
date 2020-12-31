terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.51.0"
    }
  }
}

provider "google" {
  # Configuration options
  credentials = "${file("~/.gcp/terraform_key.json")}"
  project = var.project
  region = var.zone
}