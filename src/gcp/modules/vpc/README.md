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
| [google_compute_network.network](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/compute_network) | resource |
| [google_compute_router.router](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/compute_router) | resource |
| [google_compute_router_nat.nat](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/compute_router_nat) | resource |
| [google_compute_subnetwork.private_subnetwork](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/compute_subnetwork) | resource |
| [google_compute_subnetwork.public_subnetwork](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/compute_subnetwork) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nat_ip_allocate_option"></a> [nat\_ip\_allocate\_option](#input\_nat\_ip\_allocate\_option) | NAT - How external IPs should be allocated for this NAT | `string` | n/a | yes |
| <a name="input_network_auto_create_subnetworks"></a> [network\_auto\_create\_subnetworks](#input\_network\_auto\_create\_subnetworks) | VPC - whether to automatically create a subnetwork or not | `bool` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | VPC - network name | `string` | n/a | yes |
| <a name="input_private_subnetwork_ip_cidr_range"></a> [private\_subnetwork\_ip\_cidr\_range](#input\_private\_subnetwork\_ip\_cidr\_range) | Subnet - private subnetwork IP CIDR range | `string` | n/a | yes |
| <a name="input_public_subnetwork_ip_cidr_range"></a> [public\_subnetwork\_ip\_cidr\_range](#input\_public\_subnetwork\_ip\_cidr\_range) | Subnet - public subnetwork IP CIDR range | `string` | n/a | yes |
| <a name="input_source_subnetwork_ip_ranges_to_nat"></a> [source\_subnetwork\_ip\_ranges\_to\_nat](#input\_source\_subnetwork\_ip\_ranges\_to\_nat) | NAT - How NAT should be configured per Subnetwork | `string` | n/a | yes |
| <a name="input_subnetwork_name"></a> [subnetwork\_name](#input\_subnetwork\_name) | Subnet - subnetwork name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
