<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.19.0 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_instance_profile.ec2_instance_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.ec2_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_policy_document.ec2_trust_relationship](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ec2_instance_profile_name"></a> [ec2\_instance\_profile\_name](#input\_ec2\_instance\_profile\_name) | IAM EC2 instance profile name | `string` | n/a | yes |
| <a name="input_ec2_role_name"></a> [ec2\_role\_name](#input\_ec2\_role\_name) | IAM EC2 role name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
