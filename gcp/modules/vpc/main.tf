resource "google_compute_network" "network" {
  name                    = var.network_name
  auto_create_subnetworks = var.network_auto_create_subnetworks
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = var.subnetwork_name
  ip_cidr_range = var.subnetwork_ip_cidr_range
  region        = var.subnetwork_region
  network       = google_compute_network.network.id
}
