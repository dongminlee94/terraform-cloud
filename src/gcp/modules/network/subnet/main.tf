resource "google_compute_subnetwork" "subnetwork" {
  count = var.subnetwork_enable ? 1 : 0

  name          = var.subnetwork_name
  ip_cidr_range = var.subnetwork_ip_cidr_range
  network       = var.network_id
}
