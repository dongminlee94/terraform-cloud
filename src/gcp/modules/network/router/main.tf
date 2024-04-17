resource "google_compute_router" "router" {
  count = var.router_enable ? 1 : 0

  name    = var.router_name
  network = var.network_id
}

resource "google_compute_router_nat" "nat" {
  count = var.nat_enable ? 1 : 0

  name                               = var.nat_name
  router                             = google_compute_router.router[0].name
  nat_ip_allocate_option             = var.nat_ip_allocate_option
  source_subnetwork_ip_ranges_to_nat = var.nat_source_subnetwork_ip_ranges
}
