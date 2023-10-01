variable "image_name" {
  description = "docker image name"
  type        = string
  default     = "nginx:latest"
}

variable "image_keep_locally" {
  description = "docker image keep locally"
  type        = bool
  default     = false
}

variable "container_name" {
  description = "container name"
  type        = string
  default     = "nginx"
}

variable "nginx_internal_port" {
  description = "nginx internal port"
  type        = number
  default     = 80
}

variable "nginx_external_port" {
  description = "nginx external port"
  type        = number
  default     = 80
}
