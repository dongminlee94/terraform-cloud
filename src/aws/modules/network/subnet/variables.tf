variable "subnet_enable" {
  description = "Subnet - enable/disable"
  type        = bool
}

variable "subnet_name" {
  description = "Subnet - name"
  type        = string
}

variable "subnet_vpc_id" {
  description = "Subnet - VPC ID"
  type        = string
}

variable "subnet_cidr_blocks" {
  description = "Subnet - CIDR blocks"
  type        = list(string)
}

variable "subnet_availability_zones" {
  description = "Subnet - availability zones"
  type        = list(string)
}

variable "subnet_additional_tags" {
  description = "Subnet - tags"
  type        = map(string)
}
