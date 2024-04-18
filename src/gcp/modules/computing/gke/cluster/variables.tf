variable "network_name" {
  description = "VPC - network name"
  type        = string
}

variable "subnetwork_name" {
  description = "Subnet - name"
  type        = string
}

variable "gke_cluster_enable" {
  description = "GKE Cluster - enable/disable"
  type        = bool
}

variable "gke_cluster_name" {
  description = "GKE Cluster - cluster name"
  type        = string
}

variable "gke_cluster_min_master_version" {
  description = "GKE Cluster - min master version"
  type        = string
}

variable "gke_cluster_remove_default_node_pool" {
  description = "GKE Cluster - whether to remove default node pool"
  type        = bool
}

variable "gke_cluster_initial_node_count" {
  description = "GKE Cluster - initial node count"
  type        = number
}

variable "gke_cluster_deletion_protection" {
  description = "GKE Cluster - whether to deletion protection"
  type        = bool
}
