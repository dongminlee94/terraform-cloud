variable "sa_account_id" {
  description = "Service Account - account id"
  type        = string
}

variable "network_name" {
  description = "VPC - network name"
  type        = string
}

variable "subnetwork_name" {
  description = "Subnet - name"
  type        = string
}

variable "gke_cluster_name" {
  description = "GKE cluster - cluster name"
  type        = string
}

variable "gke_remove_default_node_pool" {
  description = "GKE cluster - whether to remove default node pool"
  type        = bool
}

variable "gke_deletion_protection" {
  description = "GKE cluster - whether to deletion protection"
  type        = bool
}

variable "gke_cluster_secondary_range_name" {
  description = "GKE cluster - cluster secondary range name"
  type        = string
}

variable "gke_services_secondary_range_name" {
  description = "GKE cluster - services secondary range name"
  type        = string
}

variable "gke_network_policy_enabled" {
  description = "GKE cluster - network policy enabled"
  type        = bool
}

variable "gke_network_policy_provider" {
  description = "GKE cluster - network policy provider"
  type        = string
}

variable "gke_node_pool_name" {
  description = "GKE node pool - node pool name"
  type        = string
}

variable "gke_node_count" {
  description = "GKE node pool - node count"
  type        = number
}

variable "gke_machine_type" {
  description = "GKE node pool - machine type"
  type        = string
}

variable "gke_tags" {
  description = "GKE node pool - tags"
  type        = list(string)
}

variable "gke_min_node_count" {
  description = "GKE node pool - minimum node count"
  type        = number
}

variable "gke_max_node_count" {
  description = "GKE node pool - maximum node count"
  type        = number
}

variable "gke_auto_repair" {
  description = "GKE node pool - auto repair"
  type        = bool
}

variable "gke_auto_upgrade" {
  description = "GKE node pool - auto upgrade"
  type        = bool
}
