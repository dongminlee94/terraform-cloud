variable "network_name" {
  description = "VPC network name"
  type        = string
}

variable "network_auto_create_subnetworks" {
  description = "Whether to automatically create a subnetwork or not"
  type        = bool
}

variable "subnetwork_name" {
  description = "VPC subnetwork name"
  type        = string
}

variable "subnetwork_ip_cidr_range" {
  description = "VPC subnetwork IP CIDR range"
  type        = string
}

variable "firewall_name" {
  description = "Firewall ssh name"
  type        = string
}

variable "common_cidr_block" {
  description = "Firewall common CIDR block"
  type        = string
}
