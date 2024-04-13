variable "vpc_enable" {
  description = "VPC - enable/disable"
  type        = bool
}

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
