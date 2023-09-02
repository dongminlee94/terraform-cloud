variable "network_name" {
  type        = string
  description = "VPC network name"
}

variable "network_auto_create_subnetworks" {
  type        = bool
  description = "Whether to automatically create a subnetwork or not"
}

variable "subnetwork_name" {
  type        = string
  description = "VPC subnetwork name"
}

variable "subnetwork_ip_cidr_range" {
  type        = string
  description = "VPC subnetwork IP CIDR range"
}

variable "subnetwork_region" {
  type        = string
  description = "VPC subnetwork region"
}
