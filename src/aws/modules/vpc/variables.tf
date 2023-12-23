###################################################################################################
# VPC
###################################################################################################
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

###################################################################################################
# Subnet
###################################################################################################
variable "public_subnet_cidr_blocks" {
  description = "Public Subnet - CIDR blocks"
  type        = list(string)
}

variable "private_subnet_cidr_blocks" {
  description = "Private Subnet - CIDR blocks"
  type        = list(string)
}

variable "common_subnet_availability_zones" {
  description = "Subnet - availability zones"
  type        = list(string)
}

variable "eip_name" {
  description = "Elastic IP - name"
  type        = string
}

variable "nat_gateway_name" {
  description = "NAT Gateway - name"
  type        = string
}

variable "igw_name" {
  description = "Internet Gateway - name"
  type        = string
}

variable "public_rt_name" {
  description = "Public Route Table - name"
  type        = string
}

variable "private_rt_name" {
  description = "Private Route Table - name"
  type        = string
}

variable "common_cidr_block" {
  description = "Common CIDR block"
  type        = string
}
