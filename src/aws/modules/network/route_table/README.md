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
| [aws_route.route](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/route) | resource |
| [aws_route_table.rt](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/route_table) | resource |
| [aws_route_table_association.rta](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/route_table_association) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_route_destination_cidr_block"></a> [route\_destination\_cidr\_block](#input\_route\_destination\_cidr\_block) | Route - destination cidr block | `string` | n/a | yes |
| <a name="input_route_enable"></a> [route\_enable](#input\_route\_enable) | Route - enable/disable | `bool` | n/a | yes |
| <a name="input_route_igw_id"></a> [route\_igw\_id](#input\_route\_igw\_id) | Route - internet gateway ID | `string` | n/a | yes |
| <a name="input_route_is_public"></a> [route\_is\_public](#input\_route\_is\_public) | Route - public/private | `bool` | n/a | yes |
| <a name="input_route_nat_id"></a> [route\_nat\_id](#input\_route\_nat\_id) | Route - nat gateway ID | `string` | n/a | yes |
| <a name="input_rt_enable"></a> [rt\_enable](#input\_rt\_enable) | Route Table - enable/disable | `bool` | n/a | yes |
| <a name="input_rt_name"></a> [rt\_name](#input\_rt\_name) | Route Table - name | `string` | n/a | yes |
| <a name="input_rt_vpc_id"></a> [rt\_vpc\_id](#input\_rt\_vpc\_id) | Route Table - VPC ID | `string` | n/a | yes |
| <a name="input_rta_enable"></a> [rta\_enable](#input\_rta\_enable) | Route Table Association - enable/disable | `bool` | n/a | yes |
| <a name="input_rta_subnet_cidr_blocks"></a> [rta\_subnet\_cidr\_blocks](#input\_rta\_subnet\_cidr\_blocks) | Route Table Association - subnet cidr blocks | `list(string)` | n/a | yes |
| <a name="input_rta_subnet_ids"></a> [rta\_subnet\_ids](#input\_rta\_subnet\_ids) | Route Table Association - subnet ids | `list(string)` | n/a | yes |
<!-- END_TF_DOCS -->
