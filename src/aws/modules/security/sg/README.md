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
| [aws_security_group.sg](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/security_group) | resource |
| [aws_security_group_rule.sg_rule_egress](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.sg_rule_ingress](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/security_group_rule) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_sg_enable"></a> [sg\_enable](#input\_sg\_enable) | Security Group - enable/disable | `bool` | n/a | yes |
| <a name="input_sg_my_ip"></a> [sg\_my\_ip](#input\_sg\_my\_ip) | Security Group - my ip | `string` | n/a | yes |
| <a name="input_sg_name"></a> [sg\_name](#input\_sg\_name) | Security Group - name | `string` | n/a | yes |
| <a name="input_sg_rule_egress_enable"></a> [sg\_rule\_egress\_enable](#input\_sg\_rule\_egress\_enable) | Security Group Rule - egress enable/disable | `bool` | n/a | yes |
| <a name="input_sg_rule_ingress_enable"></a> [sg\_rule\_ingress\_enable](#input\_sg\_rule\_ingress\_enable) | Security Group Rule - ingress enable/disable | `bool` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | VPC - name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
