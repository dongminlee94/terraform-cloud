module "iam_global" {
  source = "../../modules/iam"

  iam_group_global_name      = "iam_group_global"
  iam_full_access_policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
  vpc_full_access_policy_arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
  ec2_full_access_policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"

  iam_global_name = "iam_global"
}
