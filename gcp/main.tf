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

resource "google_compute_network" "tf_prod_1" {
    name                    = "tf-prod-1"
    auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "tf_asne1_prod_1" {
    name          = "tf-asne1-prod-1"
    ip_cidr_range = "10.1.0.0/16"
    region        = "asia-northeast1"
    network       = google_compute_network.tf_prod_1.id
}
