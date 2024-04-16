variable "eks_subnet_names" {
  description = "Subnet - subnet names"
  type        = list(string)
}

variable "eks_cluster_enable" {
  description = "EKS Cluster - enable/disable"
  type        = bool
}

variable "eks_cluster_name" {
  description = "EKS Cluster - name"
  type        = string
}

variable "eks_service_role_arn" {
  description = "EKS Cluster - service role arn"
  type        = string
}

variable "eks_cluster_version" {
  description = "EKS Cluster - version"
  type        = string
}

variable "eks_cluster_endpoint_public_access" {
  description = "EKS Cluster - endpoint public access"
  type        = bool
}

variable "eks_cluster_endpoint_private_access" {
  description = "EKS Cluster - endpoint private access"
  type        = bool
}
