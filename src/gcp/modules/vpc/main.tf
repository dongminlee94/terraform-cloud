resource "google_compute_network" "network" {
  name                    = var.network_name
  auto_create_subnetworks = var.network_auto_create_subnetworks
}

resource "google_compute_subnetwork" "public_subnetwork" {
  name          = "public-${var.subnetwork_name}"
  ip_cidr_range = var.public_subnetwork_ip_cidr_range
  network       = google_compute_network.network.id
}

resource "google_compute_subnetwork" "private_subnetwork" {
  name          = "private-${var.subnetwork_name}"
  ip_cidr_range = var.private_subnetwork_ip_cidr_range
  network       = google_compute_network.network.id
}

resource "google_compute_router" "router" {
  name    = "${var.network_name}-router"
  network = google_compute_network.network.id
}

resource "google_compute_router_nat" "nat" {
  name                               = "${var.network_name}-nat"
  router                             = google_compute_router.router.name
  nat_ip_allocate_option             = var.nat_ip_allocate_option
  source_subnetwork_ip_ranges_to_nat = var.source_subnetwork_ip_ranges_to_nat
}
