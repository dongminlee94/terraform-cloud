output "network_id" {
  value = var.network_enable ? google_compute_network.network[0].id : ""
}
