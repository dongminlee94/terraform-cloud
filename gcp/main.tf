terraform {
    required_providers {
        google = {
            source  = "hashicorp/google"
            version = "4.33.0"
        }
    }
}

locals {
    home_path = "${pathexpand("~")}"
}

provider "google" {
    credentials = file("${local.home_path}/.gcp/sa.json")
    project     = var.project
}
