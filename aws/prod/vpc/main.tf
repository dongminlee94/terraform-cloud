module "vpc_global" {
  source = "../../modules/vpc"

  vpc_name       = "vpc_global"
  vpc_cidr_block = "10.0.0.0/16"

  subnet_name       = "subnet_global"
  subnet_cidr_block = "10.0.1.0/24"

  common_cidr_block = "0.0.0.0/0"

  igw_name = "igw_global"
  rt_name  = "rt_global"
  sg_name  = "sg_global"
}
