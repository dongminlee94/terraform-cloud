data "aws_iam_policy_document" "ec2_trust_relationship" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "ec2_role" {
  name               = var.ec2_role_name
  assume_role_policy = data.aws_iam_policy_document.ec2_trust_relationship.json
}

resource "aws_iam_instance_profile" "ec2_instance_profile" {
  name = var.ec2_instance_profile_name
  role = aws_iam_role.ec2_role.name
}
