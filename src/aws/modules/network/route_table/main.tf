resource "aws_route_table" "rt" {
  count = var.rt_enable ? 1 : 0

  vpc_id = var.rt_vpc_id

  tags = {
    Name = var.rt_name
  }
}

resource "aws_route" "route" {
  count = var.route_enable ? 1 : 0

  route_table_id         = aws_route_table.rt[0].id
  destination_cidr_block = var.route_destination_cidr_block

  gateway_id     = var.route_is_public ? var.route_igw_id : null
  nat_gateway_id = var.route_is_public ? null : var.route_nat_id
}

resource "aws_route_table_association" "rta" {
  count = var.rta_enable ? length(var.rta_subnet_cidr_blocks) : 0

  subnet_id      = var.rta_subnet_ids[count.index]
  route_table_id = aws_route_table.rt[0].id
}
