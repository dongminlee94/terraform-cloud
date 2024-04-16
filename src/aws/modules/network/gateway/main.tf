resource "aws_internet_gateway" "igw" {
  count = var.igw_enable ? 1 : 0

  vpc_id = var.igw_vpc_id

  tags = {
    Name = var.igw_name
  }
}

resource "aws_nat_gateway" "nat" {
  count = var.nat_enable ? 1 : 0

  allocation_id = var.nat_eip_id
  subnet_id     = var.nat_subnet_id

  tags = {
    Name = var.nat_name
  }
}
