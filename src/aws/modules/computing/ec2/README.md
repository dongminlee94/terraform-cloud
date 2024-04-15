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
| [aws_dlm_lifecycle_policy.ebs_snapshot_backup](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/dlm_lifecycle_policy) | resource |
| [aws_instance.ec2_instance](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/instance) | resource |
| [aws_key_pair.key_pair](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/key_pair) | resource |
| [aws_security_group.sg](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/data-sources/security_group) | data source |
| [aws_subnet.subnet](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dlm_description"></a> [dlm\_description](#input\_dlm\_description) | Data Lifecycle Manager - description | `string` | n/a | yes |
| <a name="input_dlm_ec2_role_arn"></a> [dlm\_ec2\_role\_arn](#input\_dlm\_ec2\_role\_arn) | Data Lifecycle Manager - EC2 IAM role arn | `string` | n/a | yes |
| <a name="input_dlm_enable"></a> [dlm\_enable](#input\_dlm\_enable) | Data Lifecycle Manager - enable/disable | `bool` | n/a | yes |
| <a name="input_dlm_resource_types"></a> [dlm\_resource\_types](#input\_dlm\_resource\_types) | Data Lifecycle Manager - resource types | `list(string)` | n/a | yes |
| <a name="input_dlm_schedule_copy_tags"></a> [dlm\_schedule\_copy\_tags](#input\_dlm\_schedule\_copy\_tags) | Data Lifecycle Manager - schedule copy tags | `bool` | n/a | yes |
| <a name="input_dlm_schedule_count"></a> [dlm\_schedule\_count](#input\_dlm\_schedule\_count) | Data Lifecycle Manager - schedule count | `number` | n/a | yes |
| <a name="input_dlm_schedule_interval"></a> [dlm\_schedule\_interval](#input\_dlm\_schedule\_interval) | Data Lifecycle Manager - schedule interval | `number` | n/a | yes |
| <a name="input_dlm_schedule_interval_unit"></a> [dlm\_schedule\_interval\_unit](#input\_dlm\_schedule\_interval\_unit) | Data Lifecycle Manager - schedule interval unit | `string` | n/a | yes |
| <a name="input_dlm_schedule_name"></a> [dlm\_schedule\_name](#input\_dlm\_schedule\_name) | Data Lifecycle Manager - schedule name | `string` | n/a | yes |
| <a name="input_dlm_schedule_tags_to_add"></a> [dlm\_schedule\_tags\_to\_add](#input\_dlm\_schedule\_tags\_to\_add) | Data Lifecycle Manager - schedule tags to add | `string` | n/a | yes |
| <a name="input_dlm_schedule_times"></a> [dlm\_schedule\_times](#input\_dlm\_schedule\_times) | Data Lifecycle Manager - schedule times | `list(string)` | n/a | yes |
| <a name="input_dlm_state"></a> [dlm\_state](#input\_dlm\_state) | Data Lifecycle Manager - state | `string` | n/a | yes |
| <a name="input_ec2_ami"></a> [ec2\_ami](#input\_ec2\_ami) | EC2 - AMI ID | `string` | n/a | yes |
| <a name="input_ec2_dat"></a> [ec2\_dat](#input\_ec2\_dat) | EC2 - protection against accidental EC2 termination via AWS API calls | `bool` | n/a | yes |
| <a name="input_ec2_enable"></a> [ec2\_enable](#input\_ec2\_enable) | EC2 - enable/disable | `bool` | n/a | yes |
| <a name="input_ec2_iam_profile_name"></a> [ec2\_iam\_profile\_name](#input\_ec2\_iam\_profile\_name) | EC2 - IAM profile name | `string` | n/a | yes |
| <a name="input_ec2_instance_isb"></a> [ec2\_instance\_isb](#input\_ec2\_instance\_isb) | EC2 - defines the behavior when an OS-level shutdown is performed within the EC2 instance | `string` | n/a | yes |
| <a name="input_ec2_instance_name"></a> [ec2\_instance\_name](#input\_ec2\_instance\_name) | EC2 - VM instance name | `string` | n/a | yes |
| <a name="input_ec2_instance_type"></a> [ec2\_instance\_type](#input\_ec2\_instance\_type) | EC2 - VM instance type | `string` | n/a | yes |
| <a name="input_ec2_monitoring"></a> [ec2\_monitoring](#input\_ec2\_monitoring) | EC2 - monitoring details activation/deactivation | `bool` | n/a | yes |
| <a name="input_ec2_volume_size"></a> [ec2\_volume\_size](#input\_ec2\_volume\_size) | EC2 - VM instance volume size | `number` | n/a | yes |
| <a name="input_key_pair_enable"></a> [key\_pair\_enable](#input\_key\_pair\_enable) | Key Pair - enable/disable | `bool` | n/a | yes |
| <a name="input_key_pair_name"></a> [key\_pair\_name](#input\_key\_pair\_name) | Key Pair - name | `string` | n/a | yes |
| <a name="input_key_pair_public_key"></a> [key\_pair\_public\_key](#input\_key\_pair\_public\_key) | Key Pair - public key | `string` | n/a | yes |
| <a name="input_sg_name"></a> [sg\_name](#input\_sg\_name) | Security Group - name | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Subnet - name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | n/a |
<!-- END_TF_DOCS -->
