/*
resource "google_project" "my_project" {
  name       = "mevijay-lab"
  project_id = "mevijay-${random_id.randhex.hex}"
  org_id     = "507653172616"
  auto_create_network = false
}

module "project-services" {
  source  = "terraform-google-modules/project-factory/google//modules/project_services"
  version = "~> 14.1"

  project_id                  = google_project.my_project.project_id

  activate_apis = [
    "compute.googleapis.com",
    "iam.googleapis.com",
    "run.googleapis.com",
    "container.googleapis.com",
    "dns.googleapis.com",
  ]
}

*/