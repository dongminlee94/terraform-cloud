data "aws_iam_role" "eks_service_role" {
  name = var.eks_service_role_name
}

data "aws_iam_role" "eks_nodes_role" {
  name = var.eks_nodes_role_name
}

data "aws_subnet" "subnet" {
  count = length(var.subnet_ids)

  id = var.subnet_ids[count.index]
}

data "aws_security_group" "sg" {
  filter {
    name   = "tag:Name"
    values = [var.sg_name]
  }
}
