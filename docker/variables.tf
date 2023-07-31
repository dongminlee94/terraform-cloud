variable "nginx_internal_port" {
  type        = number
  description = "nginx internal port"
  default     = 80
}

variable "nginx_external_port" {
  type        = number
  description = "nginx external port"
  default     = 80
}
