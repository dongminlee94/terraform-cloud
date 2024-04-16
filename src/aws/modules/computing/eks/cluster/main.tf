resource "aws_eks_cluster" "eks_cluster" {
  count = var.eks_cluster_enable ? 1 : 0

  name     = var.eks_cluster_name
  role_arn = var.eks_service_role_arn
  version  = var.eks_cluster_version

  vpc_config {
    subnet_ids              = [for subnet in data.aws_subnet.subnet : subnet.id]
    endpoint_public_access  = var.eks_cluster_endpoint_public_access
    endpoint_private_access = var.eks_cluster_endpoint_private_access
  }
}
