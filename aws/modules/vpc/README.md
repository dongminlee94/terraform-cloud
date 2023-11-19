<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.19.0 |

## Resources

| Name | Type |
|------|------|
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route.route](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route_table.rt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.rta](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.private_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_common_cidr_block"></a> [common\_cidr\_block](#input\_common\_cidr\_block) | Common CIDR block | `string` | n/a | yes |
| <a name="input_igw_name"></a> [igw\_name](#input\_igw\_name) | Internet Gateway - name | `string` | n/a | yes |
| <a name="input_private_subnet_cidr_blocks"></a> [private\_subnet\_cidr\_blocks](#input\_private\_subnet\_cidr\_blocks) | Private Subnet - CIDR blocks | `list(string)` | n/a | yes |
| <a name="input_public_subnet_cidr_blocks"></a> [public\_subnet\_cidr\_blocks](#input\_public\_subnet\_cidr\_blocks) | Public Subnet - CIDR blocks | `list(string)` | n/a | yes |
| <a name="input_rt_name"></a> [rt\_name](#input\_rt\_name) | Route Table - name | `string` | n/a | yes |
| <a name="input_vpc_cidr_block"></a> [vpc\_cidr\_block](#input\_vpc\_cidr\_block) | VPC - CIDR block | `string` | n/a | yes |
| <a name="input_vpc_enable_dns_hostnames"></a> [vpc\_enable\_dns\_hostnames](#input\_vpc\_enable\_dns\_hostnames) | VPC - DNS hostnames true/false | `bool` | n/a | yes |
| <a name="input_vpc_enable_dns_support"></a> [vpc\_enable\_dns\_support](#input\_vpc\_enable\_dns\_support) | VPC - DNS support true/false | `bool` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | VPC - name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
