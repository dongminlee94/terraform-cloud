module "vpc" {
  source = "../../modules/network/vpc"

  vpc_enable               = true
  vpc_name                 = "vpc"
  vpc_cidr_block           = "10.0.0.0/16"
  vpc_enable_dns_support   = true
  vpc_enable_dns_hostnames = true
}

module "public_subnet" {
  source = "../../modules/network/subnet"

  subnet_enable             = true
  subnet_name               = "public-subnet"
  subnet_vpc_id             = module.vpc.vpc_id
  subnet_cidr_blocks        = ["10.0.0.0/24", "10.0.2.0/24", "10.0.4.0/24"]
  subnet_availability_zones = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
  subnet_additional_tags    = {}
}

module "private_subnet" {
  source = "../../modules/network/subnet"

  subnet_enable             = true
  subnet_name               = "private-subnet"
  subnet_vpc_id             = module.vpc.vpc_id
  subnet_cidr_blocks        = ["10.0.6.0/24", "10.0.8.0/24", "10.0.10.0/24"]
  subnet_availability_zones = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
  subnet_additional_tags = {
    "kubernetes.io/role/internal-elb" = "1"
  }
}

# common_cidr_block                = "0.0.0.0/0"

# eip_name         = "nat-eip"
# nat_gateway_name = "nat-gateway"
# igw_name         = "igw"

# public_rt_name  = "public-rt"
# private_rt_name = "private-rt"
