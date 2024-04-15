output "iam_role_arn" {
  value = var.role_enable ? aws_iam_role.role[0].arn : ""
}

output "instance_profile_name" {
  value = var.instance_profile_enable ? aws_iam_instance_profile.instance_profile[0].name : ""
}
