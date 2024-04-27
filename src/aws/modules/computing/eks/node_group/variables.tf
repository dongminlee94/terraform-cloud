variable "subnet_names" {
  description = "Subnet - subnet names"
  type        = list(string)
}

variable "cluster_name" {
  description = "Cluster - name"
  type        = string
}

variable "node_group_enable" {
  description = "Node Group - enable/disable"
  type        = bool
}

variable "node_group_name" {
  description = "Node Group - name"
  type        = string
}

variable "node_role_arn" {
  description = "Node Group - node role arn"
  type        = string
}

variable "node_group_ami" {
  description = "Node Group - AMI"
  type        = string
}

variable "node_group_instance_types" {
  description = "Node Group - instance type"
  type        = list(string)
}

variable "node_group_disk_size" {
  description = "Node Group - disk size"
  type        = string
}

variable "node_group_desired_size" {
  description = "Node Group - desired size"
  type        = number
}

variable "node_group_max_size" {
  description = "Node Group - max size"
  type        = number
}

variable "node_group_min_size" {
  description = "Node Group - min size"
  type        = number
}

variable "node_group_max_unavailable" {
  description = "Node Group - max unavailable"
  type        = number
}
