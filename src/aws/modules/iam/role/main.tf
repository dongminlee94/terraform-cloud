resource "aws_iam_role" "role" {
  count = var.role_enable ? 1 : 0

  name               = var.role_name
  assume_role_policy = data.aws_iam_policy_document.policy_document_service.json
}

resource "aws_iam_role_policy_attachment" "role_policy_attachment" {
  count = var.role_policy_attachment_enable ? length(var.role_policy_attachment_policy_arns) : 0

  role       = aws_iam_role.role[0].name
  policy_arn = var.role_policy_attachment_policy_arns[count.index]
}

resource "aws_iam_instance_profile" "instance_profile" {
  count = var.instance_profile_enable ? 1 : 0

  name = var.instance_profile_name
  role = aws_iam_role.role[0].name
}
