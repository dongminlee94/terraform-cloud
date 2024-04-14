<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.20.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.20.0 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_instance_profile.instance_profile](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.role](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.role_pa](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.role_pd_service](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance_profile_enable"></a> [instance\_profile\_enable](#input\_instance\_profile\_enable) | Instance Profile - enable/disable | `bool` | n/a | yes |
| <a name="input_instance_profile_name"></a> [instance\_profile\_name](#input\_instance\_profile\_name) | Instance Profile - name | `string` | n/a | yes |
| <a name="input_role_enable"></a> [role\_enable](#input\_role\_enable) | Role - enable/disable | `bool` | n/a | yes |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | Role - name | `string` | n/a | yes |
| <a name="input_role_pa_enable"></a> [role\_pa\_enable](#input\_role\_pa\_enable) | Role Policy Attachment - enable/disable | `bool` | n/a | yes |
| <a name="input_role_pa_policy_arns"></a> [role\_pa\_policy\_arns](#input\_role\_pa\_policy\_arns) | Role Policy Attachment - policy arns | `list(string)` | n/a | yes |
| <a name="input_role_pd_service_identifiers"></a> [role\_pd\_service\_identifiers](#input\_role\_pd\_service\_identifiers) | Role Policy Document - identifiers for service type | `list(string)` | n/a | yes |
<!-- END_TF_DOCS -->
