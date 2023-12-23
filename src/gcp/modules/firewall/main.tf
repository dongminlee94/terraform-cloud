resource "google_compute_firewall" "firewall_ingress" {
  name      = "${var.firewall_name}-ingress"
  network   = data.google_compute_network.network.self_link
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
  target_tags   = var.target_tags
}

resource "google_compute_firewall" "firewall_egress" {
  name      = "${var.firewall_name}-egress"
  network   = data.google_compute_network.network.self_link
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
  target_tags        = var.target_tags
}
