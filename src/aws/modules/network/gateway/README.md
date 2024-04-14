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
| [aws_eip.eip](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/eip) | resource |
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.nat](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/nat_gateway) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_eip_enable"></a> [eip\_enable](#input\_eip\_enable) | Elastic IP - enable/disable | `bool` | n/a | yes |
| <a name="input_eip_name"></a> [eip\_name](#input\_eip\_name) | Elastic IP - name | `string` | n/a | yes |
| <a name="input_igw_enable"></a> [igw\_enable](#input\_igw\_enable) | Internet Gateway - enable/disable | `bool` | n/a | yes |
| <a name="input_igw_name"></a> [igw\_name](#input\_igw\_name) | Internet Gateway - name | `string` | n/a | yes |
| <a name="input_igw_vpc_id"></a> [igw\_vpc\_id](#input\_igw\_vpc\_id) | Internet Gateway - VPC id | `string` | n/a | yes |
| <a name="input_nat_enable"></a> [nat\_enable](#input\_nat\_enable) | NAT Gateway - enable/disable | `bool` | n/a | yes |
| <a name="input_nat_name"></a> [nat\_name](#input\_nat\_name) | NAT Gateway - name | `string` | n/a | yes |
| <a name="input_nat_subnet_id"></a> [nat\_subnet\_id](#input\_nat\_subnet\_id) | NAT Gateway - subnet id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_igw_id"></a> [igw\_id](#output\_igw\_id) | n/a |
| <a name="output_nat_id"></a> [nat\_id](#output\_nat\_id) | n/a |
<!-- END_TF_DOCS -->
