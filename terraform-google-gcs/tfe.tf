terraform {
  cloud {
    hostname     = "terraform.adarshasuvarna.in"
    organization = "Niveus-Solutions-Pvt-Ltd"

    workspaces {
      name = "terraform-google-cloud-storage"
    }
  }
}