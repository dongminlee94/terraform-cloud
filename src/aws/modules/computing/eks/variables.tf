variable "eks_service_role_name" {
  description = "IAM - EKS service role name"
  type        = string
}

variable "eks_nodes_role_name" {
  description = "IAM - EKS nodes role name"
  type        = string
}

variable "private_subnet_names" {
  description = "Subnet - private subnet names"
  type        = list(string)
}

variable "eks_name" {
  description = "EKS Cluster - name"
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

variable "eks_node_group_ami" {
  description = "EKS Node Group - AMI"
  type        = string
}

variable "eks_node_group_instance_types" {
  description = "EKS Node Group - instance type"
  type        = list(string)
}

variable "eks_node_group_disk_size" {
  description = "EKS Node Group - disk size"
  type        = string
}

variable "eks_node_group_desired_size" {
  description = "EKS Node Group - desired size"
  type        = number
}

variable "eks_node_group_max_size" {
  description = "EKS Node Group - max size"
  type        = number
}

variable "eks_node_group_min_size" {
  description = "EKS Node Group - min size"
  type        = number
}

variable "eks_node_group_max_unavailable" {
  description = "EKS Node Group - max unavailable"
  type        = number
}
