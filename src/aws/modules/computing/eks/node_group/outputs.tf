output "eks_node_group_id" {
  value = aws_eks_node_group.eks_node_group[0].id
}
