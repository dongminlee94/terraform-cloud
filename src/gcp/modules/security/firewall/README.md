<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 5.5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.5.0 |

## Resources

| Name | Type |
|------|------|
| [google_compute_firewall.firewall_egress](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.firewall_ingress](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/compute_firewall) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_firewall_egress_enable"></a> [firewall\_egress\_enable](#input\_firewall\_egress\_enable) | Firewall - egress enable/disable | `bool` | n/a | yes |
| <a name="input_firewall_ingress_enable"></a> [firewall\_ingress\_enable](#input\_firewall\_ingress\_enable) | Firewall - ingress enable/disable | `bool` | n/a | yes |
| <a name="input_firewall_my_ip"></a> [firewall\_my\_ip](#input\_firewall\_my\_ip) | Firewall - my ip | `string` | n/a | yes |
| <a name="input_firewall_name"></a> [firewall\_name](#input\_firewall\_name) | Firewall - name | `string` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | VPC - network name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
