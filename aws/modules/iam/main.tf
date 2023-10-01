resource "aws_iam_user" "iam_global" {
  name = var.iam_global_name
}

resource "aws_iam_user_policy_attachment" "iam_full_access" {
  user       = aws_iam_user.iam_global.name
  policy_arn = var.iam_full_access_policy_arn
}

resource "aws_iam_user_policy_attachment" "vpc_full_access" {
  user       = aws_iam_user.iam_global.name
  policy_arn = var.vpc_full_access_policy_arn
}

resource "aws_iam_user_policy_attachment" "ec2_full_access" {
  user       = aws_iam_user.iam_global.name
  policy_arn = var.ec2_full_access_policy_arn
}
