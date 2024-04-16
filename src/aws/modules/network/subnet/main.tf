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
