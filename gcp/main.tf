terraform {
    required_providers {
        google = {
            source  = "hashicorp/google"
            version = "4.33.0"
        }
    }

    backend "gcs" {
        bucket = "tf-gcp-prod"
    }
}

locals {
    home_path = "${pathexpand("~")}"
}

provider "google" {
    credentials = file("${local.home_path}/.gcp/sa.json")
    project     = var.project
}

module "compute" {
    source = "./modules/compute"

    subnetwork      = module.network.google_compute_subnetwork["tf_gcp_prod"]
    nat_ip          = module.network.google_compute_address["tf_gcp_prod"]
    service_account = module.iam.service_account["gce"]
}

module "iam" {
    source = "./modules/iam"
}

module "network" {
    source = "./modules/network"
}

module "storage" {
    source = "./modules/storage"
}