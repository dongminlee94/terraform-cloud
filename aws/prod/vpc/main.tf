module "vpc" {
  source = "../../modules/vpc"

  vpc_name       = "vpc"
  vpc_cidr_block = "10.0.0.0/16"

  subnet_name       = "subnet"
  subnet_cidr_block = "10.0.1.0/24"

  common_cidr_block = "0.0.0.0/0"

  igw_name = "igw"
  rt_name  = "rt"
  sg_name  = "sg"
}
