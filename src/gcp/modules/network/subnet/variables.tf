variable "subnetwork_enable" {
  description = "Subnet - enable/disable"
  type        = bool
}

variable "subnetwork_name" {
  description = "Subnet - name"
  type        = string
}

variable "subnetwork_ip_cidr_range" {
  description = "Subnet - IP CIDR range"
  type        = string
}

variable "network_id" {
  description = "VPC - network ID"
  type        = string
}
