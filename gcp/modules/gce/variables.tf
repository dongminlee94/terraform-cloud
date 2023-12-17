variable "subnetwork_name" {
  description = "Subnet - name"
  type        = string
}

variable "sa_account_id" {
  description = "Service Account - account id"
  type        = string
}

variable "gce_address_name" {
  description = "GCE - NAT IP address name"
  type        = string
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

variable "gce_image" {
  description = "GCE - image"
  type        = string
}

variable "gce_size" {
  description = "GCE - disk volume size"
  type        = number
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
