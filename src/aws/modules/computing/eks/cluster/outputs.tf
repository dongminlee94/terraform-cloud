output "eks_cluster_name" {
  value = var.eks_cluster_enable ? aws_eks_cluster.eks_cluster[0].name : ""
}
