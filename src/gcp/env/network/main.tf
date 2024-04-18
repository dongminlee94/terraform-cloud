module "vpc" {
  source = "../../modules/network/vpc"

  network_enable                  = true
  network_name                    = "network"
  network_auto_create_subnetworks = false
}

module "subnet" {
  source = "../../modules/network/subnet"

  subnetwork_enable        = true
  subnetwork_name          = "subnetwork"
  subnetwork_ip_cidr_range = "10.0.0.0/24"
  network_id               = module.vpc.network_id
}

module "router" {
  source = "../../modules/network/router"

  router_enable = true
  router_name   = "router"
  network_id    = module.vpc.network_id

  nat_enable                      = true
  nat_name                        = "nat"
  nat_ip_allocate_option          = "AUTO_ONLY"
  nat_source_subnetwork_ip_ranges = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}
