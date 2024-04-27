output "eks_cluster_name" {
  value = var.cluster_enable ? aws_eks_cluster.cluster[0].name : ""
}
