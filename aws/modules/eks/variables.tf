variable "eks_service_role_name" {
  description = "IAM - EKS service role name"
  type        = string
}

variable "eks_nodes_role_name" {
  description = "IAM - EKS nodes role name"
  type        = string
}

variable "public_subnet_names" {
  description = "Subnet - Public Subnet names"
  type        = list(string)
}

variable "private_subnet_names" {
  description = "Subnet - Private Subnet names"
  type        = list(string)
}

variable "sg_name" {
  description = "Security Group - name"
  type        = string
}

variable "eks_cluster_name" {
  description = "EKS Cluster - name"
  type        = string
}

variable "eks_node_group_name" {
  description = "EKS Node Group - name"
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
