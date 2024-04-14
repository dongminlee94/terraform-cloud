variable "igw_enable" {
  description = "Internet Gateway - enable/disable"
  type        = bool
}

variable "igw_name" {
  description = "Internet Gateway - name"
  type        = string
}

variable "igw_vpc_id" {
  description = "Internet Gateway - VPC id"
  type        = string
}

variable "eip_enable" {
  description = "Elastic IP - enable/disable"
  type        = bool
}

variable "eip_name" {
  description = "Elastic IP - name"
  type        = string
}

variable "nat_enable" {
  description = "NAT Gateway - enable/disable"
  type        = bool
}

variable "nat_name" {
  description = "NAT Gateway - name"
  type        = string
}

variable "nat_subnet_id" {
  description = "NAT Gateway - subnet id"
  type        = string
}
