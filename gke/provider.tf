terraform {
  backend "gcs" {
    bucket  = "tf-state-prod21"
    prefix  = "terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.53.1"
    }
  }
}

provider "random" {
}

provider "google" {
  project     = var.project_id
  region      = var.region
}
