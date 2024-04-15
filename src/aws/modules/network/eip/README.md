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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_eip_enable"></a> [eip\_enable](#input\_eip\_enable) | Elastic IP - enable/disable | `bool` | n/a | yes |
| <a name="input_eip_instance_id"></a> [eip\_instance\_id](#input\_eip\_instance\_id) | Elastic IP - instance ID | `string` | n/a | yes |
| <a name="input_eip_name"></a> [eip\_name](#input\_eip\_name) | Elastic IP - name | `string` | n/a | yes |
| <a name="input_eip_use_instance"></a> [eip\_use\_instance](#input\_eip\_use\_instance) | Elastic IP - whether to use instance ID | `bool` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eip_id"></a> [eip\_id](#output\_eip\_id) | n/a |
<!-- END_TF_DOCS -->
