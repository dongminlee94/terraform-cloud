resource "aws_key_pair" "eks_key_pair" {
  key_name   = var.eks_node_group_key_name
  public_key = base64decode(var.eks_node_group_public_key)
}

resource "aws_eks_cluster" "eks_cluster" {
  name     = var.eks_cluster_name
  role_arn = data.aws_iam_role.eks_service_role.arn

  vpc_config {
    subnet_ids              = [for subnet in data.aws_subnet.private_subnet : subnet.id]
    security_group_ids      = [data.aws_security_group.sg.id]
    endpoint_public_access  = var.eks_cluster_endpoint_public_access
    endpoint_private_access = var.eks_cluster_endpoint_private_access
  }
}

resource "aws_eks_node_group" "eks_node_group" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = var.eks_node_group_name
  node_role_arn   = data.aws_iam_role.eks_nodes_role.arn
  subnet_ids      = [for subnet in data.aws_subnet.private_subnet : subnet.id]

  ami_type       = var.eks_node_group_ami
  instance_types = var.eks_node_group_instance_types
  disk_size      = var.eks_node_group_disk_size

  remote_access {
    ec2_ssh_key               = aws_key_pair.eks_key_pair.key_name
    source_security_group_ids = [data.aws_security_group.sg.id]
  }

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
