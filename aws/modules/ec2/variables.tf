variable "instance_profile_name" {
  description = "IAM - instance profile name"
  type        = string
}

variable "subnet_name" {
  description = "Subnet - name"
  type        = string
}

variable "sg_name" {
  description = "Security Group - name"
  type        = string
}

variable "key_name" {
  description = "EC2 - Key name"
  type        = string
}

variable "public_key" {
  description = "EC2 - Public key"
  type        = string
}

variable "eip_name" {
  description = "EC2 - Elastic IP name"
  type        = string
}

variable "ec2_instance_name" {
  description = "EC2 - VM instance name"
  type        = string
}

variable "ec2_ami" {
  description = "EC2 - AMI id"
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

variable "ec2_monitoring" {
  description = "EC2 - Monitoring details activation/deactivation"
  type        = bool
}

variable "ec2_dat" {
  description = "EC2 - Protection against accidental EC2 termination via AWS API calls"
  type        = bool
}

variable "ec2_instance_isb" {
  description = "EC2 - Defines the behavior when an OS-level shutdown is performed within the EC2 instance"
  type        = string
}

variable "dlm_description" {
  description = "Data Lifecycle Manager - description"
  type        = string
}

variable "dlm_ec2_role_name" {
  description = "Data Lifecycle Manager - EC2 IAM role name"
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
