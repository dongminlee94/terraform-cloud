module "vpc" {
  source = "../../modules/vpc"

  network_name                    = "network"
  network_auto_create_subnetworks = false

  subnetwork_name                   = "subnetwork"
  subnetwork_ip_cidr_range          = "10.0.0.0/24"
  subnetwork_pods_ip_cidr_range     = "10.0.2.0/24"
  subnetwork_services_ip_cidr_range = "10.0.4.0/24"
}
