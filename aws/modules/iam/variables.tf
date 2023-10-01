#################
### IAM Group ###
#################
variable "iam_group_global_name" {
  description = "IAM global group name"
  type        = string
}

variable "iam_full_access_policy_arn" {
  description = "Policy ARN of IAM full access"
  type        = string
}

variable "vpc_full_access_policy_arn" {
  description = "Policy ARN of VPC full access"
  type        = string
}

variable "ec2_full_access_policy_arn" {
  description = "Policy ARN of EC2 full access"
  type        = string
}

################
### IAM User ###
################
variable "iam_global_name" {
  description = "IAM global name"
  type        = string
}
