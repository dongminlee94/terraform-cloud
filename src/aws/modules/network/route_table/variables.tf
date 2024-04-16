variable "rt_enable" {
  description = "Route Table - enable/disable"
  type        = bool
}

variable "rt_name" {
  description = "Route Table - name"
  type        = string
}

variable "rt_vpc_id" {
  description = "Route Table - VPC ID"
  type        = string
}

variable "route_enable" {
  description = "Route - enable/disable"
  type        = bool
}

variable "route_is_public" {
  description = "Route - public/private"
  type        = bool
}

variable "route_destination_cidr_block" {
  description = "Route - destination cidr block"
  type        = string
}

variable "route_igw_id" {
  description = "Route - internet gateway ID"
  type        = string
}

variable "route_nat_id" {
  description = "Route - nat gateway ID"
  type        = string
}

variable "rta_enable" {
  description = "Route Table Association - enable/disable"
  type        = bool
}

variable "rta_subnet_cidr_blocks" {
  description = "Route Table Association - subnet cidr blocks"
  type        = list(string)
}

variable "rta_subnet_ids" {
  description = "Route Table Association - subnet ids"
  type        = list(string)
}
