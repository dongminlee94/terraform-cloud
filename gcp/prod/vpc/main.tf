module "vpc" {
  source = "../../modules/vpc"

  network_name                    = "network"
  network_auto_create_subnetworks = false

  subnetwork_name                   = "subnetwork"
  subnetwork_ip_cidr_range          = "10.1.0.0/16"
  subnetwork_pods_ip_cidr_range     = "10.1.64.0/18"
  subnetwork_services_ip_cidr_range = "10.1.0.0/20"
}
