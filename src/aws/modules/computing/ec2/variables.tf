variable "subnet_name" {
  description = "Subnet - name"
  type        = string
}

variable "sg_name" {
  description = "Security Group - name"
  type        = string
}

variable "key_pair_enable" {
  description = "Key Pair - enable/disable"
  type        = bool
}

variable "key_pair_name" {
  description = "Key Pair - name"
  type        = string
}

variable "key_pair_public_key" {
  description = "Key Pair - public key"
  type        = string
}

variable "ec2_enable" {
  description = "EC2 - enable/disable"
  type        = bool
}

variable "ec2_ami" {
  description = "EC2 - AMI ID"
  type        = string
}

variable "ec2_instance_type" {
  description = "EC2 - VM instance type"
  type        = string
}

variable "ec2_volume_size" {
  description = "EC2 - VM instance volume size"
  type        = number
}

variable "ec2_instance_name" {
  description = "EC2 - VM instance name"
  type        = string
}

variable "ec2_iam_profile_name" {
  description = "EC2 - IAM profile name"
  type        = string
}

variable "ec2_monitoring" {
  description = "EC2 - monitoring details activation/deactivation"
  type        = bool
}

variable "ec2_dat" {
  description = "EC2 - protection against accidental EC2 termination via AWS API calls"
  type        = bool
}

variable "ec2_instance_isb" {
  description = "EC2 - defines the behavior when an OS-level shutdown is performed within the EC2 instance"
  type        = string
}

variable "dlm_enable" {
  description = "Data Lifecycle Manager - enable/disable"
  type        = bool
}

variable "dlm_description" {
  description = "Data Lifecycle Manager - description"
  type        = string
}

variable "dlm_ec2_role_arn" {
  description = "Data Lifecycle Manager - EC2 IAM role arn"
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
