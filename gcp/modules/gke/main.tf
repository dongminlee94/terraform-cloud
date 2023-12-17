resource "google_container_cluster" "gke_cluster" {
  name = var.gke_cluster_name

  network    = data.google_compute_network.network.self_link
  subnetwork = data.google_compute_subnetwork.subnetwork.self_link

  node_pool {
    name = var.gke_node_pool_name

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
  }

  ip_allocation_policy {
    cluster_secondary_range_name  = var.gke_cluster_secondary_range_name
    services_secondary_range_name = var.gke_services_secondary_range_name
  }

  network_policy {
    enabled  = var.gke_network_policy_enabled
    provider = var.gke_network_policy_provider
  }
}
