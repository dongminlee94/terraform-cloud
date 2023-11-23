variable "eks_service_role_name" {
  description = "IAM - EKS service role name"
  type        = string
}

variable "eks_nodes_role_name" {
  description = "IAM - EKS nodes role name"
  type        = string
}

variable "public_subnet_names" {
  description = "Subnet - public subnet names"
  type        = list(string)
}

variable "private_subnet_names" {
  description = "Subnet - private subnet names"
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

variable "eks_node_group_max_unavailable" {
  description = "EKS Node Group - max unavailable"
  type        = number
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

variable "dlm_description" {
  description = "Data Lifecycle Manager - description"
  type        = string
}

variable "dlm_state" {
  description = "Data Lifecycle Manager - state"
  type        = string
}

variable "dlm_resource_types" {
  description = "Data Lifecycle Manager - resource types"
  type        = list(string)
}

variable "dlm_schedule_name" {
  description = "Data Lifecycle Manager - schedule name"
  type        = string
}

variable "dlm_schedule_interval" {
  description = "Data Lifecycle Manager - schedule interval"
  type        = number
}

variable "dlm_schedule_interval_unit" {
  description = "Data Lifecycle Manager - schedule interval unit"
  type        = string
}

variable "dlm_schedule_times" {
  description = "Data Lifecycle Manager - schedule times"
  type        = list(string)
}

variable "dlm_schedule_count" {
  description = "Data Lifecycle Manager - schedule count"
  type        = number
}

variable "dlm_schedule_tags_to_add" {
  description = "Data Lifecycle Manager - schedule tags to add"
  type        = string
}

variable "dlm_schedule_copy_tags" {
  description = "Data Lifecycle Manager - schedule copy tags"
  type        = bool
}
