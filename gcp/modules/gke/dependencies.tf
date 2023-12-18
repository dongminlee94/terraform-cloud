data "google_service_account" "sa" {
  account_id = var.sa_account_id
}

data "google_compute_network" "network" {
  name = var.network_name
}

data "google_compute_subnetwork" "subnetwork" {
  name = var.subnetwork_name
}
