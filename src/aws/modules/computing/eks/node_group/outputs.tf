output "eks_node_group_name" {
  value = var.eks_node_group_enable ? aws_eks_node_group.eks_node_group[0].node_group_name : ""
}
