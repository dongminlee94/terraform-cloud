resource "google_container_cluster" "cluster" {
  name = var.gke_cluster_name

  network    = data.google_compute_network.network.self_link
  subnetwork = data.google_compute_subnetwork.subnetwork.self_link

  remove_default_node_pool = var.gke_cluster_remove_default_node_pool
  initial_node_count       = var.gke_cluster_initial_node_count
  deletion_protection      = var.gke_cluster_deletion_protection
}
