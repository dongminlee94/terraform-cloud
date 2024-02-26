module "vpc" {
  source = "../../modules/vpc"

  network_name                    = "network"
  network_auto_create_subnetworks = false

  subnetwork_name          = "subnetwork"
  subnetwork_ip_cidr_range = "10.0.0.0/24"
}
