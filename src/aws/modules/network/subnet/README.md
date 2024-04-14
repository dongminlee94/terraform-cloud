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
| [aws_subnet.subnet](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_subnet_additional_tags"></a> [subnet\_additional\_tags](#input\_subnet\_additional\_tags) | Subnet - tags | `map(string)` | n/a | yes |
| <a name="input_subnet_availability_zones"></a> [subnet\_availability\_zones](#input\_subnet\_availability\_zones) | Subnet - availability zones | `list(string)` | n/a | yes |
| <a name="input_subnet_cidr_blocks"></a> [subnet\_cidr\_blocks](#input\_subnet\_cidr\_blocks) | Subnet - CIDR blocks | `list(string)` | n/a | yes |
| <a name="input_subnet_enable"></a> [subnet\_enable](#input\_subnet\_enable) | Subnet - enable/disable | `bool` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Subnet - name | `string` | n/a | yes |
| <a name="input_subnet_vpc_id"></a> [subnet\_vpc\_id](#input\_subnet\_vpc\_id) | Subnet - VPC id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_cidr_blocks"></a> [subnet\_cidr\_blocks](#output\_subnet\_cidr\_blocks) | n/a |
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | n/a |
<!-- END_TF_DOCS -->
