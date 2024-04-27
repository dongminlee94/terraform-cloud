resource "aws_eks_node_group" "node_group" {
  count = var.node_group_enable ? 1 : 0

  node_group_name = var.node_group_name
  node_role_arn   = var.node_role_arn

  cluster_name = var.cluster_name
  subnet_ids   = [for subnet in data.aws_subnet.subnet : subnet.id]

  ami_type       = var.node_group_ami
  instance_types = var.node_group_instance_types
  disk_size      = var.node_group_disk_size

  scaling_config {
    desired_size = var.node_group_desired_size
    min_size     = var.node_group_min_size
    max_size     = var.node_group_max_size
  }

  update_config {
    max_unavailable = var.node_group_max_unavailable
  }

  tags = {
    Name = var.node_group_name
  }
}
