variable "vpc_name" {
  description = "VPC name"
  type        = string
}

variable "vpc_cidr_block" {
  description = "VPC CIDR block"
  type        = string
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
}

variable "subnet_cidr_block" {
  description = "Subnet CIDR block"
  type        = string
}

variable "common_cidr_block" {
  description = "Common CIDR block"
  type        = string
}

variable "igw_name" {
  description = "Internet gateway name"
  type        = string
}

variable "rt_name" {
  description = "Route table name"
  type        = string
}

variable "sg_name" {
  description = "Security group name"
  type        = string
}
