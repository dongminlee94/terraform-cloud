variable "service_account" {
  description = "terraform google_service_account resource"
  type = object({
    email = string
  })
}

variable "subnetwork" {
  description = "terraform google_compute_subnetwortk resource"
  type = object({
    id = string
  })
}

variable "nat_ip" {
  description = "terraform google_compute_address resource"
  type = object({
    address = string
  })
}
