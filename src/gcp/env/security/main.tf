module "firewall" {
  source = "../../modules/security/firewall"

  firewall_ingress_enable = true
  firewall_egress_enable  = true

  firewall_name = "firewall"
  network_name  = "network"

  firewall_my_ip = "1.224.255.28"
}
