##########################################################################
# EC2
##########################################################################

resource "aws_iam_role" "ec2_role" {
  name               = var.ec2_role_name
  assume_role_policy = data.aws_iam_policy_document.ec2_service_policy.json
}

resource "aws_iam_instance_profile" "ec2_profile" {
  name = var.ec2_profile_name
  role = aws_iam_role.ec2_role.name
}

##########################################################################
# EKS - Service Role
##########################################################################

resource "aws_iam_role" "eks_service_role" {
  name               = var.eks_service_role_name
  assume_role_policy = data.aws_iam_policy_document.eks_service_policy.json
}

resource "aws_iam_role_policy_attachment" "eks_service_role_policy" {
  for_each   = toset(var.eks_service_role_policy)
  role       = aws_iam_role.eks_service_role.name
  policy_arn = each.value
}

##########################################################################
# EKS - Nodes Role
##########################################################################

resource "aws_iam_role" "eks_nodes_role" {
  name               = var.eks_nodes_role_name
  assume_role_policy = data.aws_iam_policy_document.ec2_service_policy.json
}

resource "aws_iam_role_policy_attachment" "eks_nodes_role_policy" {
  for_each   = toset(var.eks_nodes_role_policy)
  role       = aws_iam_role.eks_nodes_role.name
  policy_arn = each.value
}

resource "aws_iam_instance_profile" "eks_nodes_profile" {
  name = var.eks_nodes_profile_name
  role = aws_iam_role.eks_nodes_role.name
}
