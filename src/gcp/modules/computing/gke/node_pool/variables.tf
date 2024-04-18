variable "gke_node_pool_enable" {
  description = "GKE Node Pool - enable/disable"
  type        = bool
}

variable "gke_node_pool_name" {
  description = "GKE Node Pool - node pool name"
  type        = string
}

variable "gke_cluster_name" {
  description = "GKE Cluster - name"
  type        = string
}

variable "gke_node_pool_machine_type" {
  description = "GKE Node Pool - machine type"
  type        = string
}

variable "gke_node_pool_sa_email" {
  description = "GKE Node Pool - service account email"
  type        = string
}

variable "gke_node_pool_tags" {
  description = "GKE Node Pool - tags"
  type        = list(string)
}

variable "gke_node_pool_node_count" {
  description = "GKE Node Pool - node count"
  type        = number
}

variable "gke_node_pool_min_node_count" {
  description = "GKE Node Pool - minimum node count"
  type        = number
}

variable "gke_node_pool_max_node_count" {
  description = "GKE Node Pool - maximum node count"
  type        = number
}

variable "gke_node_pool_auto_repair" {
  description = "GKE Node Pool - auto repair"
  type        = bool
}

variable "gke_node_pool_auto_upgrade" {
  description = "GKE Node Pool - auto upgrade"
  type        = bool
}
