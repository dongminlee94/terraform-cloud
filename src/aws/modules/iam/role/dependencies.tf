data "aws_iam_policy_document" "policy_document_service" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = var.policy_document_service_identifiers
    }
  }
}
