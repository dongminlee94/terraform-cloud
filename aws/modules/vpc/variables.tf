variable "vpc_name" {
  description = "VPC - name"
  type        = string
}

variable "vpc_cidr_block" {
  description = "VPC - CIDR block"
  type        = string
}

variable "vpc_enable_dns_support" {
  description = "VPC - DNS support true/false"
  type        = bool
}

variable "vpc_enable_dns_hostnames" {
  description = "VPC - DNS hostnames true/false"
  type        = bool
}

variable "public_subnet_cidr_blocks" {
  description = "Public Subnet - CIDR blocks"
  type        = list(string)
}

variable "private_subnet_cidr_blocks" {
  description = "Private Subnet - CIDR blocks"
  type        = list(string)
}

variable "igw_name" {
  description = "Internet Gateway - name"
  type        = string
}

variable "rt_name" {
  description = "Route Table - name"
  type        = string
}

variable "common_cidr_block" {
  description = "Common CIDR block"
  type        = string
}
