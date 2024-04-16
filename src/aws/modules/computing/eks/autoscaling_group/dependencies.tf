data "aws_autoscaling_groups" "eks_asgs" {
  filter {
    name   = "tag:eks:cluster-name"
    values = [var.eks_node_group_tag_cluster_name]
  }
}
