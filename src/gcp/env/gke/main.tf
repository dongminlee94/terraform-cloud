module "gke" {
  source = "../../modules/gke"

  sa_account_id   = "gke-sa"
  network_name    = "network"
  subnetwork_name = "private-subnetwork"

  gke_cluster_name             = "gke-cluster"
  gke_remove_default_node_pool = true
  gke_initial_node_count       = 1
  gke_deletion_protection      = false

  gke_node_pool_name = "gke-node-pool"
  gke_machine_type   = "e2-medium"
  gke_tags           = ["gcp"]
  gke_node_count     = 1
  gke_min_node_count = 1
  gke_max_node_count = 3
  gke_auto_repair    = true
  gke_auto_upgrade   = true
}
