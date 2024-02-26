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

variable "public_subnetwork_ip_cidr_range" {
  description = "Subnet - public subnetwork IP CIDR range"
  type        = string
}

variable "private_subnetwork_ip_cidr_range" {
  description = "Subnet - private subnetwork IP CIDR range"
  type        = string
}

variable "nat_ip_allocate_option" {
  description = "NAT - How external IPs should be allocated for this NAT"
  type        = string
}

variable "source_subnetwork_ip_ranges_to_nat" {
  description = "NAT - How NAT should be configured per Subnetwork"
  type        = string
}
