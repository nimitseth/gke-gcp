terraform {
  backend "http" {
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
  credentials = "passwad123"
}
