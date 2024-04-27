data "aws_subnet" "subnet" {
  count = length(var.subnet_names)

  filter {
    name   = "tag:Name"
    values = [var.subnet_names[count.index]]
  }
}
