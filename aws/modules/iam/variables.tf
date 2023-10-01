#################
### IAM Group ###
#################
variable "iam_group_global_name" {
  type        = string
  description = "IAM global group name"
}

variable "iam_full_access_policy_arn" {
  type        = string
  description = "Policy ARN of IAM full access"
}

variable "vpc_full_access_policy_arn" {
  type        = string
  description = "Policy ARN of VPC full access"
}

variable "ec2_full_access_policy_arn" {
  type        = string
  description = "Policy ARN of EC2 full access"
}

################
### IAM User ###
################
variable "iam_global_name" {
  type        = string
  description = "IAM global name"
}
