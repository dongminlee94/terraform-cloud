<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.8.0 |

## Resources

| Name | Type |
|------|------|
| [google_compute_firewall.firewall_egress](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.firewall_ingress](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_network.network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_common_cidr_block"></a> [common\_cidr\_block](#input\_common\_cidr\_block) | Firewall - common CIDR block | `string` | n/a | yes |
| <a name="input_firewall_name"></a> [firewall\_name](#input\_firewall\_name) | Firewall - name | `string` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | VPC - network name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
