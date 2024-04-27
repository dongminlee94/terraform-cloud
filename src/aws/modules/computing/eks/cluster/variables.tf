variable "subnet_names" {
  description = "Subnet - subnet names"
  type        = list(string)
}

variable "cluster_enable" {
  description = "Cluster - enable/disable"
  type        = bool
}

variable "cluster_name" {
  description = "Cluster - name"
  type        = string
}

variable "service_role_arn" {
  description = "Cluster - service role arn"
  type        = string
}

variable "cluster_version" {
  description = "Cluster - version"
  type        = string
}

variable "cluster_endpoint_public_access" {
  description = "Cluster - endpoint public access"
  type        = bool
}

variable "cluster_endpoint_private_access" {
  description = "Cluster - endpoint private access"
  type        = bool
}
