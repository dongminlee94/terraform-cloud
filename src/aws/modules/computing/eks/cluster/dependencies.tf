data "aws_subnet" "subnet" {
  count = length(var.eks_subnet_names)

  filter {
    name   = "tag:Name"
    values = [var.eks_subnet_names[count.index]]
  }
}
