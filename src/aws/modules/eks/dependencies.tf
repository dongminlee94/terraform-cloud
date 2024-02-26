data "aws_iam_role" "eks_service_role" {
  name = var.eks_service_role_name
}

data "aws_iam_role" "eks_nodes_role" {
  name = var.eks_nodes_role_name
}

data "aws_subnet" "private_subnet" {
  count = length(var.private_subnet_names)

  filter {
    name   = "tag:Name"
    values = [var.private_subnet_names[count.index]]
  }
}
