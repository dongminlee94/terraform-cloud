<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.19.0 |

## Resources

| Name | Type |
|------|------|
| [aws_dlm_lifecycle_policy.ebs_snapshot_backup](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dlm_lifecycle_policy) | resource |
| [aws_eip.ec2_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_instance.ec2_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_key_pair.ec2_key_pair](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_iam_instance_profile.ec2_instance_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_instance_profile) | data source |
| [aws_iam_role.ec2_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_role) | data source |
| [aws_security_group.sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/security_group) | data source |
| [aws_subnet.subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dlm_description"></a> [dlm\_description](#input\_dlm\_description) | Data Lifecycle Manager - description | `string` | n/a | yes |
| <a name="input_dlm_ec2_role_name"></a> [dlm\_ec2\_role\_name](#input\_dlm\_ec2\_role\_name) | Data Lifecycle Manager - EC2 IAM role name | `string` | n/a | yes |
| <a name="input_dlm_resource_types"></a> [dlm\_resource\_types](#input\_dlm\_resource\_types) | Data Lifecycle Manager - resource types | `list(string)` | n/a | yes |
| <a name="input_dlm_schedule_copy_tags"></a> [dlm\_schedule\_copy\_tags](#input\_dlm\_schedule\_copy\_tags) | Data Lifecycle Manager - schedule copy tags | `bool` | n/a | yes |
| <a name="input_dlm_schedule_count"></a> [dlm\_schedule\_count](#input\_dlm\_schedule\_count) | Data Lifecycle Manager - schedule count | `number` | n/a | yes |
| <a name="input_dlm_schedule_interval"></a> [dlm\_schedule\_interval](#input\_dlm\_schedule\_interval) | Data Lifecycle Manager - schedule interval | `number` | n/a | yes |
| <a name="input_dlm_schedule_interval_unit"></a> [dlm\_schedule\_interval\_unit](#input\_dlm\_schedule\_interval\_unit) | Data Lifecycle Manager - schedule interval unit | `string` | n/a | yes |
| <a name="input_dlm_schedule_name"></a> [dlm\_schedule\_name](#input\_dlm\_schedule\_name) | Data Lifecycle Manager - schedule name | `string` | n/a | yes |
| <a name="input_dlm_schedule_tags_to_add"></a> [dlm\_schedule\_tags\_to\_add](#input\_dlm\_schedule\_tags\_to\_add) | Data Lifecycle Manager - schedule tags to add | `string` | n/a | yes |
| <a name="input_dlm_schedule_times"></a> [dlm\_schedule\_times](#input\_dlm\_schedule\_times) | Data Lifecycle Manager - schedule times | `list(string)` | n/a | yes |
| <a name="input_dlm_state"></a> [dlm\_state](#input\_dlm\_state) | Data Lifecycle Manager - state | `string` | n/a | yes |
| <a name="input_ec2_ami"></a> [ec2\_ami](#input\_ec2\_ami) | EC2 - AMI id | `string` | n/a | yes |
| <a name="input_ec2_dat"></a> [ec2\_dat](#input\_ec2\_dat) | EC2 - protection against accidental EC2 termination via AWS API calls | `bool` | n/a | yes |
| <a name="input_ec2_instance_isb"></a> [ec2\_instance\_isb](#input\_ec2\_instance\_isb) | EC2 - defines the behavior when an OS-level shutdown is performed within the EC2 instance | `string` | n/a | yes |
| <a name="input_ec2_instance_name"></a> [ec2\_instance\_name](#input\_ec2\_instance\_name) | EC2 - VM instance name | `string` | n/a | yes |
| <a name="input_ec2_instance_type"></a> [ec2\_instance\_type](#input\_ec2\_instance\_type) | EC2 - VM instance type | `string` | n/a | yes |
| <a name="input_ec2_key_name"></a> [ec2\_key\_name](#input\_ec2\_key\_name) | EC2 - key name | `string` | n/a | yes |
| <a name="input_ec2_monitoring"></a> [ec2\_monitoring](#input\_ec2\_monitoring) | EC2 - monitoring details activation/deactivation | `bool` | n/a | yes |
| <a name="input_ec2_public_key"></a> [ec2\_public\_key](#input\_ec2\_public\_key) | EC2 - public key | `string` | n/a | yes |
| <a name="input_ec2_volume_size"></a> [ec2\_volume\_size](#input\_ec2\_volume\_size) | EC2 - VM instance volume size | `number` | n/a | yes |
| <a name="input_eip_name"></a> [eip\_name](#input\_eip\_name) | EC2 - elastic IP name | `string` | n/a | yes |
| <a name="input_instance_profile_name"></a> [instance\_profile\_name](#input\_instance\_profile\_name) | IAM - instance profile name | `string` | n/a | yes |
| <a name="input_sg_name"></a> [sg\_name](#input\_sg\_name) | Security Group - name | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Subnet - name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
