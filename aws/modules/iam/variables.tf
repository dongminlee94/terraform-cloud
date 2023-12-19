##########################################################################
# EC2
##########################################################################

variable "ec2_role_name" {
  description = "IAM - EC2 role name"
  type        = string
}

variable "ec2_profile_name" {
  description = "IAM - EC2 profile name"
  type        = string
}

##########################################################################
# EKS
##########################################################################

variable "eks_service_role_name" {
  description = "IAM - EKS service role name"
  type        = string
}

variable "eks_service_role_policy" {
  description = "IAM - EKS service role policy"
  type        = list(string)
}

variable "eks_nodes_role_name" {
  description = "IAM - EKS nodes role name"
  type        = string
}

variable "eks_nodes_role_policy" {
  description = "IAM - EKS nodes role policy"
  type        = list(string)
}

variable "eks_nodes_profile_name" {
  description = "IAM - EKS nodes profile name"
  type        = string
}
