#################################################
# Key Pair
#################################################

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

#################################################
# Instance
#################################################

variable "instance_enable" {
  description = "Instance - enable/disable"
  type        = bool
}

variable "instance_sg_name" {
  description = "Security Group - name"
  type        = string
}

variable "instance_profile_name" {
  description = "Instance - profile name"
  type        = string
}

variable "instance_type" {
  description = "Instance - type"
  type        = string
}

variable "instance_subnet_name" {
  description = "Instance - subnet name"
  type        = string
}

variable "instance_ami" {
  description = "Instance - AMI id"
  type        = string
}

variable "instance_monitoring" {
  description = "Instance - monitoring details enable/disable"
  type        = bool
}

variable "instance_disable_api_termination" {
  description = "Instance - shutdown protection enable/disable"
  type        = bool
}

variable "instance_initiated_shutdown_behavior" {
  description = "Instance - shutdown protection enable/disable"
  type        = string
}

variable "instance_volume_size" {
  description = "Instance - volume size"
  type        = number
}

variable "instance_name" {
  description = "Instance - name"
  type        = string
}

#################################################
# Data Lifecycle Manager
#################################################

variable "dlm_enable" {
  description = "Data Lifecycle Manager - enable/disable"
  type        = bool
}

variable "dlm_description" {
  description = "Data Lifecycle Manager - description"
  type        = string
}

variable "dlm_role_arn" {
  description = "Data Lifecycle Manager - role arn"
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
