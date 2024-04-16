resource "aws_autoscaling_group_tag" "eks_asg_tag" {
  count = var.eks_asg_tag_enable ? length(data.aws_autoscaling_groups.eks_asgs.names) : 0

  autoscaling_group_name = data.aws_autoscaling_groups.eks_asgs.names[count.index]

  tag {
    key                 = "Name"
    value               = var.eks_node_group_name
    propagate_at_launch = true
  }
}
