##########################################################################
# EC2
##########################################################################

variable "ec2_role_name" {
  description = "IAM EC2 role name"
  type        = string
}

variable "ec2_instance_profile_name" {
  description = "IAM EC2 instance profile name"
  type        = string
}

##########################################################################
# EKS
##########################################################################

variable "eks_service_role_name" {
  description = "IAM EKS role name"
  type        = string
}

variable "eks_nodes_role_name" {
  description = "IAM EKS role name"
  type        = string
}

variable "eks_instance_profile_name" {
  description = "IAM EKS instance profile name"
  type        = string
}
