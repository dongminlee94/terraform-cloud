data "google_compute_network" "network" {
  name = var.network_name
}

data "google_compute_subnetwork" "subnetwork" {
  name = var.subnetwork_name
}
