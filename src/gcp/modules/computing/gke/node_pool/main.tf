resource "google_container_node_pool" "node_pool" {
  name    = var.gke_node_pool_name
  cluster = var.gke_cluster_name

  node_config {
    machine_type    = var.gke_node_pool_machine_type
    service_account = var.gke_node_pool_sa_email
    tags            = var.gke_node_pool_tags
  }

  node_count = var.gke_node_pool_node_count

  autoscaling {
    min_node_count = var.gke_node_pool_min_node_count
    max_node_count = var.gke_node_pool_max_node_count
  }

  management {
    auto_repair  = var.gke_node_pool_auto_repair
    auto_upgrade = var.gke_node_pool_auto_upgrade
  }
}
