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
}
data "terraform_remote_state" "example" {
  backend = "http"

  config = {
    address = https://git.mevijay.dev/api/v4/projects/5/terraform/state/classgcp
    username = var.vijay
    password = var.gitlab_token
  }
}
