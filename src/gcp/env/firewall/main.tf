module "firewall" {
  source = "../../modules/firewall"

  network_name = "network"

  firewall_name  = "firewall"
  firewall_my_ip = "1.224.255.28"
}
