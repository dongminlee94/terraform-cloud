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
| [google_compute_router.router](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/compute_router) | resource |
| [google_compute_router_nat.nat](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/compute_router_nat) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nat_enable"></a> [nat\_enable](#input\_nat\_enable) | NAT - enable/disable | `bool` | n/a | yes |
| <a name="input_nat_ip_allocate_option"></a> [nat\_ip\_allocate\_option](#input\_nat\_ip\_allocate\_option) | NAT - IP allocate option | `string` | n/a | yes |
| <a name="input_nat_name"></a> [nat\_name](#input\_nat\_name) | NAT - name | `string` | n/a | yes |
| <a name="input_nat_source_subnetwork_ip_ranges"></a> [nat\_source\_subnetwork\_ip\_ranges](#input\_nat\_source\_subnetwork\_ip\_ranges) | NAT - source subnetwork IP ranges | `string` | n/a | yes |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | VPC - network ID | `string` | n/a | yes |
| <a name="input_router_enable"></a> [router\_enable](#input\_router\_enable) | Router - enable/disable | `bool` | n/a | yes |
| <a name="input_router_name"></a> [router\_name](#input\_router\_name) | Router - name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
