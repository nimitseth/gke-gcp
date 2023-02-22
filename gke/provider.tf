terraform {
  backend "gcs" {
    bucket  = "tf-state-prod07"
    prefix  = "terraform/state"
  }
}

provider "random" {
}

provider "google" {
  project     = var.project_id
  region      = var.region
}
