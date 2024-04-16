variable "vpc_name" {
  description = "VPC - name"
  type        = string
}

variable "sg_enable" {
  description = "Security Group - enable/disable"
  type        = bool
}

variable "sg_name" {
  description = "Security Group - name"
  type        = string
}

variable "sg_rule_ingress_enable" {
  description = "Security Group Rule - ingress enable/disable"
  type        = bool
}

variable "sg_my_ip" {
  description = "Security Group - my ip"
  type        = string
}

variable "sg_rule_egress_enable" {
  description = "Security Group Rule - egress enable/disable"
  type        = bool
}
