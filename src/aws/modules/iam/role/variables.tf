variable "role_enable" {
  description = "Role - enable/disable"
  type        = bool
}

variable "role_name" {
  description = "Role - name"
  type        = string
}

variable "policy_document_service_identifiers" {
  description = "Policy Document - identifiers for service type"
  type        = list(string)
}

variable "role_pa_enable" {
  description = "Role Policy Attachment - enable/disable"
  type        = bool
}

variable "role_pa_policy_arns" {
  description = "Role Policy Attachment - policy arns"
  type        = list(string)
}

variable "instance_profile_enable" {
  description = "Instance Profile - enable/disable"
  type        = bool
}

variable "instance_profile_name" {
  description = "Instance Profile - name"
  type        = string
}
