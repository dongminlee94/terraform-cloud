resource "google_compute_network" "network" {
  name                    = var.network_name
  auto_create_subnetworks = var.network_auto_create_subnetworks
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = var.subnetwork_name
  ip_cidr_range = var.subnetwork_ip_cidr_range
  network       = google_compute_network.network.id

  dynamic "secondary_ip_range" {
    for_each = var.subnetwork_secondary_ip_ranges
    content {
      range_name    = var.secondary_ip_range.value.range_name
      ip_cidr_range = var.secondary_ip_range.value.ip_cidr_range
    }
  }
}
