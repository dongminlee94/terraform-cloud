variable "network_enable" {
  description = "VPC - enable/disable"
  type        = bool
}

variable "network_name" {
  description = "VPC - network name"
  type        = string
}

variable "network_auto_create_subnetworks" {
  description = "VPC - whether to automatically create a subnetwork or not"
  type        = bool
}
