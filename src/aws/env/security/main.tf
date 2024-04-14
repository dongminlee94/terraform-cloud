module "sg" {
  source = "../../modules/security/sg"

  vpc_name = "vpc"
  sg_name  = "sg"
  sg_my_ip = "1.224.255.28"
}
