resource "aws_eks_cluster" "eks_cluster" {
  name     = var.eks_name
  role_arn = data.aws_iam_role.eks_service_role.arn
  version  = var.eks_cluster_version

  vpc_config {
    subnet_ids              = [for subnet in data.aws_subnet.private_subnet : subnet.id]
    endpoint_public_access  = var.eks_cluster_endpoint_public_access
    endpoint_private_access = var.eks_cluster_endpoint_private_access
  }
}

resource "aws_eks_node_group" "eks_node_group" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = var.eks_name
  node_role_arn   = data.aws_iam_role.eks_nodes_role.arn
  subnet_ids      = [for subnet in data.aws_subnet.private_subnet : subnet.id]

  ami_type       = var.eks_node_group_ami
  instance_types = var.eks_node_group_instance_types
  disk_size      = var.eks_node_group_disk_size

  scaling_config {
    desired_size = var.eks_node_group_desired_size
    min_size     = var.eks_node_group_min_size
    max_size     = var.eks_node_group_max_size
  }

  update_config {
    max_unavailable = var.eks_node_group_max_unavailable
  }

  tags = {
    Name = var.eks_name
  }
}
