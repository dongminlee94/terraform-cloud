variable "network_name" {
  description = "VPC - network name"
  type        = string
}

variable "firewall_name" {
  description = "Firewall - name"
  type        = string
}

variable "common_cidr_block" {
  description = "Firewall - common CIDR block"
  type        = string
}

variable "target_tags" {
  description = "Firewall - target tags"
  type        = list(string)
}
