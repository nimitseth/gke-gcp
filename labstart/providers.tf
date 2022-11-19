terraform {
  backend "gcs" {
    bucket = "mevijay-gke1"
    prefix = "tf/state/gke1"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.43.1"
    }
  }
}
provider "random" {
}

provider "google" {
  project     = var.project_id
  region      = var.region
}