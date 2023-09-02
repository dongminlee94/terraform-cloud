variable "subnetwork_name" {
  type        = string
  description = "VPC subnetwork name"
}

variable "compute_region" {
  type        = string
  description = "Compute engine region"
}

variable "sa_account_id" {
  type        = string
  description = "Service Account account id"
}

variable "sa_project_id" {
  type        = string
  description = "Service Account project id"
}

variable "sa_scopes" {
  type        = list(string)
  description = "Service Account scopes"
}

variable "address_name" {
  type        = string
  description = "NAT IP address name"
}

variable "instance_name" {
  type        = string
  description = "VM instance name"
}

variable "machine_type" {
  type        = string
  description = "VM instance machine type"
}

variable "zone" {
  type        = string
  description = "VM instance zone"
}

variable "image" {
  type        = string
  description = "VM instance image"
}

variable "tags" {
  type        = list(string)
  description = "VM instance tags"
}

variable "ssh_pub_key" {
  type        = string
  description = "VM instance ssh public key"
}
