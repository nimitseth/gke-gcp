terraform {
  backend "http" {
    address = local.backend.gitlab_url
    lock_address = "${local.backend.gitlab_url}/lock"
    unlock_address = "${local.backend.gitlab_url}/lock"
    username = local.backend.gitlab_user
    password = local.backend.gitlab_url
    lock_method    = "POST"
    unlock_method  = "DELETE"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.43.1"
    }
  }
}
locals {
  backend = {
    gitlab_url = var.gitlab_url
    gitlab_user = var.gitlab_user
    gitlab_token = var.gitlab_token
}
}
provider "random" {
}

provider "google" {
  project     = var.project_id
  region      = var.region
}
