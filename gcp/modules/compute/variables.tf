variable "service_account" {
  type = object({
    email = string
  })
  description = "terraform google_service_account resource"
}

variable "subnetwork" {
  type = object({
    id = string
  })
  description = "terraform google_compute_subnetwortk resource"
}

variable "nat_ip" {
  type = object({
    address = string
  })
  description = "terraform google_compute_address resource"
}
