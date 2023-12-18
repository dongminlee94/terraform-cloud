module "vpc" {
  source = "../../modules/vpc"

  network_name                    = "network"
  network_auto_create_subnetworks = false

  subnetwork_name          = "subnetwork"
  subnetwork_ip_cidr_range = "10.0.0.0/16"
  subnetwork_secondary_ip_ranges = [
    { range_name = "gke-pods", ip_cidr_range = "10.0.2.0/24" },
    { range_name = "gke-services", ip_cidr_range = "10.0.4.0/24" },
  ]
}
