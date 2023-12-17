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
  description = "GKE - cluster name"
  type        = string
}

variable "gke_cluster_secondary_range_name" {
  description = "GKE - cluster secondary range name"
  type        = string
}

variable "gke_services_secondary_range_name" {
  description = "GKE - services secondary range name"
  type        = string
}

variable "gke_node_pool_name" {
  description = "GKE - node pool name"
  type        = string
}

variable "gke_node_count" {
  description = "GKE - node count"
  type        = number
}

variable "gke_machine_type" {
  description = "GKE - machine type"
  type        = string
}

variable "gke_tags" {
  description = "GKE - tags"
  type        = list(string)
}

variable "gke_min_node_count" {
  description = "GKE - minimum node count"
  type        = number
}

variable "gke_max_node_count" {
  description = "GKE - maximum node count"
  type        = number
}

variable "gke_network_policy_enabled" {
  description = "GKE - network policy enabled"
  type        = bool
}

variable "gke_network_policy_provider" {
  description = "GKE - network policy provider"
  type        = string
}
