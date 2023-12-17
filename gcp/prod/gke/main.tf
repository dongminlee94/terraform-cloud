module "gke" {
  source = "../../modules/gke"

  sa_account_id   = "gke-sa"
  network_name    = "network"
  subnetwork_name = "subnetwork"

  gke_cluster_name                  = "gke-cluster"
  gke_cluster_secondary_range_name  = "gke-pods"
  gke_services_secondary_range_name = "gke-services"
  gke_node_pool_name                = "gke-node-pool"
  gke_machine_type                  = "e2-medium"
  gke_node_count                    = 1
  gke_min_node_count                = 1
  gke_max_node_count                = 3
  gke_network_policy_enabled        = true
  gke_network_policy_provider       = "CALICO"
}
