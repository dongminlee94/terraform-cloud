module "vpc" {
  source = "../../modules/vpc"

  network_name                    = "network"
  network_auto_create_subnetworks = false

  subnetwork_name                  = "subnetwork"
  public_subnetwork_ip_cidr_range  = "10.0.0.0/24"
  private_subnetwork_ip_cidr_range = "10.0.2.0/24"

  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}
