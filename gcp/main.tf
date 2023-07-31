module "compute" {
  source = "./modules/compute"

  subnetwork      = module.network.google_compute_subnetwork["tf_gcp_prod"]
  nat_ip_1        = module.network.google_compute_address["tf_gcp_prod_1"]
  nat_ip_2        = module.network.google_compute_address["tf_gcp_prod_2"]
  nat_ip_3        = module.network.google_compute_address["tf_gcp_prod_3"]
  service_account = module.iam.service_account["gce"]
}

module "iam" {
  source = "./modules/iam"
}

module "network" {
  source = "./modules/network"
}

module "storage" {
  source = "./modules/storage"
}
