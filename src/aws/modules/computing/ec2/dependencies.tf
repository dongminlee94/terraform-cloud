data "aws_subnet" "subnet" {
  filter {
    name   = "tag:Name"
    values = [var.instance_subnet_name]
  }
}

data "aws_security_group" "security_group" {
  name = var.instance_sg_name
}
