resource "google_compute_network" "network" {
  count = var.network_enable ? 1 : 0

  name                    = var.network_name
  auto_create_subnetworks = var.network_auto_create_subnetworks
}
