module "iam_sa" {
  source = "../../modules/iam/sa"

  sa_enable = true
  sa_name   = "gke-sa"
}

module "gke_cluster" {
  source = "../../modules/computing/gke/cluster"

  network_name    = "network"
  subnetwork_name = "subnetwork"

  gke_cluster_enable             = true
  gke_cluster_name               = "gke-cluster"
  gke_cluster_min_master_version = "1.29"

  gke_cluster_remove_default_node_pool = true
  gke_cluster_initial_node_count       = 1
  gke_cluster_deletion_protection      = false
}

module "gke_node_pool" {
  source = "../../modules/computing/gke/node_pool"

  gke_node_pool_enable = true
  gke_node_pool_name   = "gke-node-pool"
  gke_cluster_name     = module.gke_cluster.gke_cluster_name

  gke_node_pool_machine_type = "e2-standard-4"
  gke_node_pool_sa_email     = module.iam_sa.service_account_email
  gke_node_pool_tags         = ["gke"]

  gke_node_pool_node_count     = 1
  gke_node_pool_min_node_count = 1
  gke_node_pool_max_node_count = 3

  gke_node_pool_auto_repair  = true
  gke_node_pool_auto_upgrade = true
}
