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
| [aws_dlm_lifecycle_policy.dlm](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/dlm_lifecycle_policy) | resource |
| [aws_instance.instance](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/instance) | resource |
| [aws_key_pair.key_pair](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/key_pair) | resource |
| [aws_security_group.security_group](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/data-sources/security_group) | data source |
| [aws_subnet.subnet](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dlm_description"></a> [dlm\_description](#input\_dlm\_description) | Data Lifecycle Manager - description | `string` | n/a | yes |
| <a name="input_dlm_enable"></a> [dlm\_enable](#input\_dlm\_enable) | Data Lifecycle Manager - enable/disable | `bool` | n/a | yes |
| <a name="input_dlm_resource_types"></a> [dlm\_resource\_types](#input\_dlm\_resource\_types) | Data Lifecycle Manager - resource types | `list(string)` | n/a | yes |
| <a name="input_dlm_role_arn"></a> [dlm\_role\_arn](#input\_dlm\_role\_arn) | Data Lifecycle Manager - role arn | `string` | n/a | yes |
| <a name="input_dlm_schedule_count"></a> [dlm\_schedule\_count](#input\_dlm\_schedule\_count) | Data Lifecycle Manager - schedule count | `number` | n/a | yes |
| <a name="input_dlm_schedule_interval"></a> [dlm\_schedule\_interval](#input\_dlm\_schedule\_interval) | Data Lifecycle Manager - schedule interval | `number` | n/a | yes |
| <a name="input_dlm_schedule_interval_unit"></a> [dlm\_schedule\_interval\_unit](#input\_dlm\_schedule\_interval\_unit) | Data Lifecycle Manager - schedule interval unit | `string` | n/a | yes |
| <a name="input_dlm_schedule_name"></a> [dlm\_schedule\_name](#input\_dlm\_schedule\_name) | Data Lifecycle Manager - schedule name | `string` | n/a | yes |
| <a name="input_dlm_schedule_times"></a> [dlm\_schedule\_times](#input\_dlm\_schedule\_times) | Data Lifecycle Manager - schedule times | `list(string)` | n/a | yes |
| <a name="input_dlm_state"></a> [dlm\_state](#input\_dlm\_state) | Data Lifecycle Manager - state | `string` | n/a | yes |
| <a name="input_instance_ami"></a> [instance\_ami](#input\_instance\_ami) | Instance - AMI id | `string` | n/a | yes |
| <a name="input_instance_disable_api_termination"></a> [instance\_disable\_api\_termination](#input\_instance\_disable\_api\_termination) | Instance - shutdown protection enable/disable | `bool` | n/a | yes |
| <a name="input_instance_enable"></a> [instance\_enable](#input\_instance\_enable) | Instance - enable/disable | `bool` | n/a | yes |
| <a name="input_instance_initiated_shutdown_behavior"></a> [instance\_initiated\_shutdown\_behavior](#input\_instance\_initiated\_shutdown\_behavior) | Instance - shutdown protection enable/disable | `string` | n/a | yes |
| <a name="input_instance_monitoring"></a> [instance\_monitoring](#input\_instance\_monitoring) | Instance - monitoring details enable/disable | `bool` | n/a | yes |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | Instance - name | `string` | n/a | yes |
| <a name="input_instance_profile_name"></a> [instance\_profile\_name](#input\_instance\_profile\_name) | Instance - profile name | `string` | n/a | yes |
| <a name="input_instance_sg_name"></a> [instance\_sg\_name](#input\_instance\_sg\_name) | Security Group - name | `string` | n/a | yes |
| <a name="input_instance_subnet_name"></a> [instance\_subnet\_name](#input\_instance\_subnet\_name) | Instance - subnet name | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance - type | `string` | n/a | yes |
| <a name="input_instance_volume_size"></a> [instance\_volume\_size](#input\_instance\_volume\_size) | Instance - volume size | `number` | n/a | yes |
| <a name="input_key_pair_enable"></a> [key\_pair\_enable](#input\_key\_pair\_enable) | Key Pair - enable/disable | `bool` | n/a | yes |
| <a name="input_key_pair_name"></a> [key\_pair\_name](#input\_key\_pair\_name) | Key Pair - name | `string` | n/a | yes |
| <a name="input_key_pair_public_key"></a> [key\_pair\_public\_key](#input\_key\_pair\_public\_key) | Key Pair - public key | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | n/a |
<!-- END_TF_DOCS -->
