variable "eks_subnet_names" {
  description = "Subnet - subnet names"
  type        = list(string)
}

variable "eks_cluster_name" {
  description = "EKS Node Group - cluster name"
  type        = string
}

variable "eks_node_group_enable" {
  description = "EKS Node Group - enable/disable"
  type        = bool
}

variable "eks_node_group_name" {
  description = "EKS Node Group - name"
  type        = string
}

variable "eks_node_role_arn" {
  description = "EKS Node Group - node role arn"
  type        = string
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
