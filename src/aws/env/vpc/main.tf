module "vpc" {
  source = "../../modules/vpc"

  vpc_name                 = "vpc"
  vpc_cidr_block           = "10.0.0.0/16"
  vpc_enable_dns_support   = true
  vpc_enable_dns_hostnames = true

  public_subnet_cidr_blocks        = ["10.0.0.0/24", "10.0.2.0/24", "10.0.4.0/24"]
  private_subnet_cidr_blocks       = ["10.0.6.0/24", "10.0.8.0/24", "10.0.10.0/24"]
  common_cidr_block                = "0.0.0.0/0"
  common_subnet_availability_zones = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]

  eip_name         = "nat_eip"
  nat_gateway_name = "nat_gateway"
  igw_name         = "igw"

  public_rt_name  = "public_rt"
  private_rt_name = "private_rt"
}
