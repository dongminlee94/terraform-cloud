resource "google_compute_network" "tf_gcp" {
    name                    = "tf-gcp"
    auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "tf_gcp_prod" {
    name          = "tf-gcp-prod"
    ip_cidr_range = "10.1.0.0/16"
    region        = "asia-northeast1"
    network       = google_compute_network.tf_gcp.id
}

resource "google_compute_address" "tf_gcp_prod" {
    name   = "tf-gcp-prod"
    region = "asia-northeast1"
}

resource "google_compute_firewall" "allow_ssh" {
    name = "allow-ssh"
    network = google_compute_network.tf_gcp.name
    description = "Allow ssh from anywhere"

    allow {
        protocol = "tcp"
        ports = ["22"]
    }

    source_ranges = ["0.0.0.0/0"]
    target_tags = ["allow-ssh"]
}

resource "google_compute_firewall" "allow_http" {
    name = "allow-http"
    network = google_compute_network.tf_gcp.name
    description = "Allow http from anywhere"

    allow {
        protocol = "tcp"
        ports = ["80"]
    }

    source_ranges = ["0.0.0.0/0"]
    target_tags = ["allow-http"]
}