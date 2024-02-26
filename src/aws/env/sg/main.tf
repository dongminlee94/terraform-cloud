module "sg" {
  source = "../../modules/sg"

  vpc_name = "vpc"
  sg_name  = "sg"
  sg_my_ip = "1.224.255.28"
}
