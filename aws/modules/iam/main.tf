resource "aws_iam_group" "iam_group_global" {
  name = var.iam_group_global_name
}

resource "aws_iam_group_policy_attachment" "iam_full_access" {
  group      = aws_iam_group.iam_group_global.name
  policy_arn = var.iam_full_access_policy_arn
}

resource "aws_iam_group_policy_attachment" "vpc_full_access" {
  group      = aws_iam_group.iam_group_global.name
  policy_arn = var.vpc_full_access_policy_arn
}

resource "aws_iam_group_policy_attachment" "ec2_full_access" {
  group      = aws_iam_group.iam_group_global.name
  policy_arn = var.ec2_full_access_policy_arn
}

resource "aws_iam_group_membership" "add_user_to_group" {
  name = "${aws_iam_user.iam_global.name}-${aws_iam_group.iam_group_global.name}"

  users = [
    aws_iam_user.iam_global.name,
  ]

  group = aws_iam_group.iam_group_global.name
}

resource "aws_iam_user" "iam_global" {
  name = var.iam_global_name
}
