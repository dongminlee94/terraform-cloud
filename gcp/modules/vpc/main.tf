resource "google_compute_network" "network" {
  name                    = var.network_name
  auto_create_subnetworks = var.network_auto_create_subnetworks
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = var.subnetwork_name
  ip_cidr_range = var.subnetwork_ip_cidr_range
  network       = google_compute_network.network.id

  secondary_ip_range {
    range_name    = "gke pods"
    ip_cidr_range = var.subnetwork_pods_ip_cidr_range
  }

  secondary_ip_range {
    range_name    = "gke services"
    ip_cidr_range = var.subnetwork_services_ip_cidr_range
  }
}
