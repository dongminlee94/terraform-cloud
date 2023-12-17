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

variable "subnetwork_secondary_ip_ranges" {
  description = "Subnet - secondary ip ranges"
  type = list(object({
    range_name    = string
    ip_cidr_range = string
  }))
}
