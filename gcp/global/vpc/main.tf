module "vpc" {
  source = "../../modules/vpc"

  network_name                    = "network-global"
  network_auto_create_subnetworks = false

  subnetwork_name          = "subnetwork-global"
  subnetwork_ip_cidr_range = "10.1.0.0/16"
  subnetwork_region        = "asia-northeast1"

  firewall_ssh_name      = "firewall-allow-ssh"
  firewall_protocol      = "tcp"
  firewall_ports         = ["22"]
  firewall_source_ranges = ["0.0.0.0/0"]
  firewall_target_tags   = ["firewall-allow-ssh"]
}
