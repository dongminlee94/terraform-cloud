module "vpc" {
  source = "../../modules/vpc"

  network_name                    = "network-global"
  network_auto_create_subnetworks = false

  subnetwork_name          = "subnetwork-global"
  subnetwork_ip_cidr_range = "10.1.0.0/16"
  subnetwork_region        = "asia-northeast1"
}
