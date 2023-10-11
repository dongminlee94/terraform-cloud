variable "subnetwork_name" {
  description = "VPC subnetwork name"
  type        = string
}

variable "sa_account_id" {
  description = "Service Account account id"
  type        = string
}

variable "compute_service_scopes" {
  description = "Service scopes"
  type        = list(string)
}

variable "compute_address_name" {
  description = "NAT IP compute address name"
  type        = string
}

variable "compute_instance_name" {
  description = "VM instance name"
  type        = string
}

variable "compute_machine_type" {
  description = "VM instance machine type"
  type        = string
}

variable "compute_zone" {
  description = "VM instance zone"
  type        = string
}

variable "compute_image" {
  description = "VM instance image"
  type        = string
}

variable "compute_tags" {
  description = "VM instance tags"
  type        = list(string)
}

variable "compute_key_name" {
  description = "VM instance key name"
  type        = string
}

variable "compute_public_key" {
  description = "VM instance ssh public key"
  type        = string
}

variable "rp_name" {
  description = "Resource policy - name"
  type        = string
}

variable "rp_days_in_cycle" {
  description = "Resource policy - schedule interval"
  type        = number
}

variable "rp_start_time" {
  description = "Resource policy - start time"
  type        = string
}

variable "rp_max_retention_days" {
  description = "Resource policy - max retention days"
  type        = number
}

variable "rp_label" {
  description = "Resource policy - tag"
  type        = string
}
