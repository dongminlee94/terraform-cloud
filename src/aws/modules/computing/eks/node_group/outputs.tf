output "eks_node_group_name" {
  value = var.node_group_enable ? aws_eks_node_group.node_group[0].node_group_name : ""
}
