variable "eip_enable" {
  description = "Elastic IP - enable/disable"
  type        = bool
}

variable "eip_use_instance" {
  description = "Elastic IP - whether to use instance ID"
  type        = bool
}

variable "eip_instance_id" {
  description = "Elastic IP - instance ID"
  type        = string
}

variable "eip_name" {
  description = "Elastic IP - name"
  type        = string
}
