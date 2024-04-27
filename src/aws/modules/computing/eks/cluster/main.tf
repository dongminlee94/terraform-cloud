resource "aws_eks_cluster" "cluster" {
  count = var.cluster_enable ? 1 : 0

  name     = var.cluster_name
  role_arn = var.service_role_arn
  version  = var.cluster_version

  vpc_config {
    subnet_ids              = [for subnet in data.aws_subnet.subnet : subnet.id]
    endpoint_public_access  = var.cluster_endpoint_public_access
    endpoint_private_access = var.cluster_endpoint_private_access
  }
}
