resource "aws_vpc" "vpc_global" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "subnet_global" {
  vpc_id     = aws_vpc.vpc_global.id
  cidr_block = var.subnet_cidr_block
  tags = {
    Name = var.subnet_name
  }
}

resource "aws_internet_gateway" "igw_global" {
  vpc_id = aws_vpc.vpc_global.id
  tags = {
    Name = var.igw_name
  }
}

resource "aws_route_table" "rt_global" {
  vpc_id = aws_vpc.vpc_global.id
  tags = {
    Name = var.rt_name
  }
}

resource "aws_route" "rt_igw_global" {
  route_table_id         = aws_route_table.rt_global.id
  destination_cidr_block = var.common_cidr_block
  gateway_id             = aws_internet_gateway.igw_global.id
}

resource "aws_route_table_association" "rta_global" {
  subnet_id      = aws_subnet.subnet_global.id
  route_table_id = aws_route_table.rt_global.id
}

resource "aws_security_group" "sg_global" {
  vpc_id = aws_vpc.vpc_global.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = [var.common_cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = [var.common_cidr_block]
  }

  tags = {
    Name = var.sg_name
  }
}
