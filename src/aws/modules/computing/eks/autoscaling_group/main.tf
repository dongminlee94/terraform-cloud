resource "aws_autoscaling_group_tag" "autoscaling_group_tag" {
  count = var.autoscaling_group_tag_enable ? 1 : 0

  autoscaling_group_name = data.aws_eks_node_group.node_group.resources[0].autoscaling_groups[0].name

  tag {
    key                 = "Name"
    value               = var.cluster_name
    propagate_at_launch = true
  }
}
