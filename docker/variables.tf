variable "image_name" {
  type        = string
  description = "docker image name"
  default     = "nginx:latest"
}

variable "image_keep_locally" {
  type        = bool
  description = "docker image keep locally"
  default     = false
}

variable "container_name" {
  type        = string
  description = "container name"
  default     = "nginx"
}

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
