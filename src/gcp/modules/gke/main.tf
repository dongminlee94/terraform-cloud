resource "google_container_cluster" "gke_cluster" {
  name = var.gke_cluster_name

  network    = data.google_compute_network.network.self_link
  subnetwork = data.google_compute_subnetwork.subnetwork.self_link

  remove_default_node_pool = var.gke_remove_default_node_pool
  initial_node_count       = var.gke_initial_node_count
  deletion_protection      = var.gke_deletion_protection

  network_policy {
    enabled  = var.gke_network_policy_enabled
    provider = var.gke_network_policy_provider
  }
}

resource "google_container_node_pool" "gke_node_pool" {
  name    = var.gke_node_pool_name
  cluster = google_container_cluster.gke_cluster.name

  node_config {
    machine_type    = var.gke_machine_type
    service_account = data.google_service_account.sa.email
    tags            = var.gke_tags
  }

  node_count = var.gke_node_count

  autoscaling {
    min_node_count = var.gke_min_node_count
    max_node_count = var.gke_max_node_count
  }

  management {
    auto_repair  = var.gke_auto_repair
    auto_upgrade = var.gke_auto_upgrade
  }
}
