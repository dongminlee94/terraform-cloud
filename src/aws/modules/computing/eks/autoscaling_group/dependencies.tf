data "aws_autoscaling_groups" "eks_asgs" {
  filter {
    name   = "tag:eks:nodegroup-name"
    values = [var.eks_node_group_name]
  }
}
