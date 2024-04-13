###################################################################################################
# Subnet
###################################################################################################
resource "aws_subnet" "subnet" {
  count = var.subnet_enable ? length(var.subnet_cidr_blocks) : 0

  vpc_id            = var.subnet_vpc_id
  cidr_block        = var.subnet_cidr_blocks[count.index]
  availability_zone = var.subnet_availability_zones[count.index]

  tags = merge(
    {
      Name = "${var.subnet_name}-${count.index}"
    },
    var.subnet_additional_tags
  )
}

# ###################################################################################################
# # Gateway
# ###################################################################################################
# resource "aws_internet_gateway" "igw" {
#   vpc_id = aws_vpc.vpc.id

#   tags = {
#     Name = var.igw_name
#   }
# }

# resource "aws_eip" "nat_eip" {
#   domain = "vpc"

#   tags = {
#     Name = var.eip_name
#   }
# }

# resource "aws_nat_gateway" "nat_gateway" {
#   allocation_id = aws_eip.nat_eip.id
#   subnet_id     = aws_subnet.public_subnet[0].id

#   tags = {
#     Name = var.nat_gateway_name
#   }
# }

# ###################################################################################################
# # Route
# ###################################################################################################
# resource "aws_route_table" "public_rt" {
#   vpc_id = aws_vpc.vpc.id

#   tags = {
#     Name = var.public_rt_name
#   }
# }

# resource "aws_route" "public_route" {
#   route_table_id = aws_route_table.public_rt.id

#   destination_cidr_block = var.common_cidr_block
#   gateway_id             = aws_internet_gateway.igw.id
# }

# resource "aws_route_table_association" "public_rta" {
#   count = length(var.public_subnet_cidr_blocks)

#   subnet_id      = aws_subnet.public_subnet[count.index].id
#   route_table_id = aws_route_table.public_rt.id
# }
