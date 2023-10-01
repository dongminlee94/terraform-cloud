variable "subnetwork_name" {
  description = "VPC subnetwork name"
  type        = string
}

variable "compute_region" {
  description = "Compute engine region"
  type        = string
}

variable "sa_account_id" {
  description = "Service Account account id"
  type        = string
}

variable "sa_project_id" {
  description = "Service Account project id"
  type        = string
}

variable "sa_scopes" {
  description = "Service Account scopes"
  type        = list(string)
}

variable "address_name" {
  description = "NAT IP address name"
  type        = string
}

variable "instance_name" {
  description = "VM instance name"
  type        = string
}

variable "machine_type" {
  description = "VM instance machine type"
  type        = string
}

variable "zone" {
  description = "VM instance zone"
  type        = string
}

variable "image" {
  description = "VM instance image"
  type        = string
}

variable "tags" {
  description = "VM instance tags"
  type        = list(string)
}

variable "user_name" {
  description = "VM instance user name"
  type        = string
}

variable "ssh_pub_key" {
  description = "VM instance ssh public key"
  type        = string
}
