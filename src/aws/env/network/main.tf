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

  nat_enable    = false
  nat_name      = ""
  nat_eip_id    = ""
  nat_subnet_id = ""
}

module "public_route_table" {
  source = "../../modules/network/route_table"

  rt_enable = true
  rt_name   = "public-rt"
  rt_vpc_id = module.vpc.vpc_id

  route_enable                 = true
  route_is_public              = true
  route_destination_cidr_block = "0.0.0.0/0"
  route_igw_id                 = module.public_gateway.igw_id
  route_nat_id                 = ""

  rta_enable             = true
  rta_subnet_cidr_blocks = module.public_subnet.subnet_cidr_blocks
  rta_subnet_ids         = module.public_subnet.subnet_ids
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

module "private_eip" {
  source = "../../modules/network/eip"

  eip_enable       = true
  eip_use_instance = false
  eip_instance_id  = ""
  eip_name         = "nat-eip"
}

module "private_gateway" {
  source = "../../modules/network/gateway"

  igw_enable = false
  igw_name   = ""
  igw_vpc_id = ""

  nat_enable    = true
  nat_name      = "nat-gateway"
  nat_eip_id    = module.private_eip.eip_id
  nat_subnet_id = module.private_subnet.subnet_ids[0]
}

module "private_route_table" {
  source = "../../modules/network/route_table"

  rt_enable = true
  rt_name   = "private-rt"
  rt_vpc_id = module.vpc.vpc_id

  route_enable                 = true
  route_is_public              = false
  route_destination_cidr_block = "0.0.0.0/0"
  route_igw_id                 = ""
  route_nat_id                 = module.private_gateway.nat_id

  rta_enable             = true
  rta_subnet_cidr_blocks = module.private_subnet.subnet_cidr_blocks
  rta_subnet_ids         = module.private_subnet.subnet_ids
}
