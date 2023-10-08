resource "google_compute_network" "network" {
  name                    = var.network_name
  auto_create_subnetworks = var.network_auto_create_subnetworks
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = var.subnetwork_name
  ip_cidr_range = var.subnetwork_ip_cidr_range
  network       = google_compute_network.network.id
}

resource "google_compute_firewall" "compute_firewall_ingress" {
  name      = "${var.firewall_name}-ingress"
  network   = google_compute_network.network.name
  direction = "INGRESS"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }

  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }

  source_ranges = [var.common_cidr_block]
  target_tags   = [var.firewall_name]
}

resource "google_compute_firewall" "compute_firewall_egress" {
  name      = "${var.firewall_name}-egress"
  network   = google_compute_network.network.name
  direction = "EGRESS"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }

  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }

  destination_ranges = [var.common_cidr_block]
  target_tags        = [var.firewall_name]
}
