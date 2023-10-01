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

variable "subnetwork_region" {
  description = "VPC subnetwork region"
  type        = string
}

variable "firewall_ssh_name" {
  description = "Firewall ssh name"
  type        = string
}

variable "firewall_protocol" {
  description = "Firewall protocol"
  type        = string
}

variable "firewall_ports" {
  description = "Firewall port numbers"
  type        = list(string)
}

variable "firewall_source_ranges" {
  description = "Firewall source ranges"
  type        = list(string)
}

variable "firewall_target_tags" {
  description = "Firewall target tags"
  type        = list(string)
}
