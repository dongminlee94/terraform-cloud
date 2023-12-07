variable "network_name" {
  description = "VPC - network name"
  type        = string
}

variable "network_auto_create_subnetworks" {
  description = "VPC - Whether to automatically create a subnetwork or not"
  type        = bool
}

variable "subnetwork_name" {
  description = "Subnet - subnetwork name"
  type        = string
}

variable "subnetwork_ip_cidr_range" {
  description = "Subnet - IP CIDR range"
  type        = string
}

variable "subnetwork_pods_ip_cidr_range" {
  description = "Subnet - Pods IP CIDR range"
  type        = string
}

variable "subnetwork_services_ip_cidr_range" {
  description = "Subnet - Services IP CIDR range"
  type        = string
}
