resource "aws_eks_node_group" "eks_node_group" {
  count = var.eks_node_group_enable ? 1 : 0

  node_group_name = var.eks_node_group_name
  node_role_arn   = var.eks_node_role_arn

  cluster_name = var.eks_cluster_name
  subnet_ids   = [for subnet in data.aws_subnet.subnet : subnet.id]

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
    Name = var.eks_node_group_name
  }
}
