resource "google_compute_firewall" "firewall_ingress" {
  count = var.firewall_ingress_enable ? 1 : 0

  name      = "${var.firewall_name}-ingress"
  network   = var.network_name
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

  source_ranges = ["${var.firewall_my_ip}/32"]
}

resource "google_compute_firewall" "firewall_egress" {
  count = var.firewall_egress_enable ? 1 : 0

  name      = "${var.firewall_name}-egress"
  network   = var.network_name
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

  destination_ranges = ["0.0.0.0/0"]
}
