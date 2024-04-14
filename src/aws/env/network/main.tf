module "vpc" {
  source = "../../modules/network/vpc"

  vpc_enable               = true
  vpc_name                 = "vpc"
  vpc_cidr_block           = "10.0.0.0/16"
  vpc_enable_dns_support   = true
  vpc_enable_dns_hostnames = true
}

###################################################################################################
# Public Network
###################################################################################################

module "public_subnet" {
  source = "../../modules/network/subnet"

  subnet_enable             = true
  subnet_name               = "public-subnet"
  subnet_vpc_id             = module.vpc.vpc_id
  subnet_cidr_blocks        = ["10.0.0.0/24", "10.0.2.0/24", "10.0.4.0/24"]
  subnet_availability_zones = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
  subnet_additional_tags    = {}
}

module "public_gateway" {
  source = "../../modules/network/gateway"

  igw_enable = true
  igw_name   = "igw"
  igw_vpc_id = module.vpc.vpc_id

  eip_enable = false
  eip_name   = ""

  nat_enable    = false
  nat_name      = ""
  nat_subnet_id = ""
}

###################################################################################################
# Private Network
###################################################################################################

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

module "private_gateway" {
  source = "../../modules/network/gateway"

  igw_enable = false
  igw_name   = ""
  igw_vpc_id = ""

  eip_enable = true
  eip_name   = "eip"

  nat_enable    = true
  nat_name      = "nat"
  nat_subnet_id = module.private_subnet.subnet_id
}

# common_cidr_block                = "0.0.0.0/0"

# public_rt_name  = "public-rt"
# private_rt_name = "private-rt"
