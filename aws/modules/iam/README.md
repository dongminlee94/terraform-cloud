<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.19.0 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_group.iam_group_global](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) | resource |
| [aws_iam_group_membership.add_user_to_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_membership) | resource |
| [aws_iam_user.iam_global](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_policy_attachment.ec2_full_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy_attachment) | resource |
| [aws_iam_user_policy_attachment.iam_full_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy_attachment) | resource |
| [aws_iam_user_policy_attachment.vpc_full_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ec2_full_access_policy_arn"></a> [ec2\_full\_access\_policy\_arn](#input\_ec2\_full\_access\_policy\_arn) | Policy ARN of EC2 full access | `string` | n/a | yes |
| <a name="input_iam_full_access_policy_arn"></a> [iam\_full\_access\_policy\_arn](#input\_iam\_full\_access\_policy\_arn) | Policy ARN of IAM full access | `string` | n/a | yes |
| <a name="input_iam_global_name"></a> [iam\_global\_name](#input\_iam\_global\_name) | IAM global name | `string` | n/a | yes |
| <a name="input_iam_group_global_name"></a> [iam\_group\_global\_name](#input\_iam\_group\_global\_name) | IAM global group name | `string` | n/a | yes |
| <a name="input_vpc_full_access_policy_arn"></a> [vpc\_full\_access\_policy\_arn](#input\_vpc\_full\_access\_policy\_arn) | Policy ARN of VPC full access | `string` | n/a | yes |
<!-- END_TF_DOCS -->
