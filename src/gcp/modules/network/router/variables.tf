variable "router_enable" {
  description = "Router - enable/disable"
  type        = bool
}

variable "router_name" {
  description = "Router - name"
  type        = string
}

variable "network_id" {
  description = "VPC - network ID"
  type        = string
}

variable "nat_enable" {
  description = "NAT - enable/disable"
  type        = bool
}

variable "nat_name" {
  description = "NAT - name"
  type        = string
}

variable "nat_ip_allocate_option" {
  description = "NAT - IP allocate option"
  type        = string
}

variable "nat_source_subnetwork_ip_ranges" {
  description = "NAT - source subnetwork IP ranges"
  type        = string
}
