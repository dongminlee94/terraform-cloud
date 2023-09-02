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

variable "firewall_ssh_name" {
  type        = string
  description = "Firewall ssh name"
}

variable "firewall_protocol" {
  type        = string
  description = "Firewall protocol"
}

variable "firewall_ports" {
  type        = list(string)
  description = "Firewall port numbers"
}

variable "firewall_source_ranges" {
  type        = list(string)
  description = "Firewall source ranges"
}

variable "firewall_target_tags" {
  type        = list(string)
  description = "Firewall target tags"
}
