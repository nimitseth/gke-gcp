terraform {
  backend "http" {
    address = var.gitlab_url
    lock_address = "${var.gitlab_url}/lock"
    unlock_address = "${var.gitlab_url}/lock"
    username = var.gitlab_user
    password = var.gitlab_token
    lock_method    = "POST"
    unlock_method  = "DELETE"
  }

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
