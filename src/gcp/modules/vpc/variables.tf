variable "network_name" {
  description = "VPC - network name"
  type        = string
}

variable "network_auto_create_subnetworks" {
  description = "VPC - whether to automatically create a subnetwork or not"
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
