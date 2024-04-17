variable "firewall_ingress_enable" {
  description = "Firewall - ingress enable/disable"
  type        = bool
}

variable "firewall_egress_enable" {
  description = "Firewall - egress enable/disable"
  type        = bool
}

variable "firewall_name" {
  description = "Firewall - name"
  type        = string
}

variable "network_name" {
  description = "VPC - network name"
  type        = string
}

variable "firewall_my_ip" {
  description = "Firewall - my ip"
  type        = string
}
