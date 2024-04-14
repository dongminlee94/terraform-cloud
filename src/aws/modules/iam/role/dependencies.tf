data "aws_iam_policy_document" "role_pd_service" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = var.role_pd_service_identifiers
    }
  }
}
