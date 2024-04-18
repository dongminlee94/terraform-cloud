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
| [google_compute_subnetwork.subnetwork](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/compute_subnetwork) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | VPC - network ID | `string` | n/a | yes |
| <a name="input_subnetwork_enable"></a> [subnetwork\_enable](#input\_subnetwork\_enable) | Subnet - enable/disable | `bool` | n/a | yes |
| <a name="input_subnetwork_ip_cidr_range"></a> [subnetwork\_ip\_cidr\_range](#input\_subnetwork\_ip\_cidr\_range) | Subnet - IP CIDR range | `string` | n/a | yes |
| <a name="input_subnetwork_name"></a> [subnetwork\_name](#input\_subnetwork\_name) | Subnet - name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
