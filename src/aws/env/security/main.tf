module "sg" {
  source = "../../modules/security/sg"

  vpc_name = "vpc"

  sg_enable = true
  sg_name   = "sg"

  sg_rule_ingress_enable = true
  sg_my_ip               = "1.224.255.28"

  sg_rule_egress_enable = true
}
