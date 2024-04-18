variable "subnetwork_name" {
  description = "Subnet - name"
  type        = string
}

variable "gce_address_enable" {
  description = "GCE - address enable/disable"
  type        = bool
}

variable "gce_address_name" {
  description = "GCE - NAT IP address name"
  type        = string
}

variable "gce_instance_enable" {
  description = "GCE - instance enable/disable"
  type        = bool
}

variable "gce_instance_name" {
  description = "GCE - name"
  type        = string
}

variable "gce_machine_type" {
  description = "GCE - machine type"
  type        = string
}

variable "gce_zone" {
  description = "GCE - zone"
  type        = string
}

variable "gce_boot_disk_image" {
  description = "GCE - boot disk image"
  type        = string
}

variable "gce_boot_disk_size" {
  description = "GCE - boot disk size"
  type        = number
}

variable "gce_sa_email" {
  description = "GCE - service account email"
  type        = string
}

variable "gce_service_scopes" {
  description = "GCE - service scopes"
  type        = list(string)
}

variable "gce_user_name" {
  description = "GCE - user name"
  type        = string
}

variable "gce_public_key" {
  description = "GCE - ssh public key"
  type        = string
}

variable "gce_tags" {
  description = "GCE - tags"
  type        = list(string)
}

variable "rp_enable" {
  description = "Resource policy - enable/disable"
  type        = bool
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
