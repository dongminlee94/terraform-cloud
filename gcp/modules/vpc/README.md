<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.80.0 |

## Resources

| Name | Type |
|------|------|
| [google_compute_network.network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) | resource |
| [google_compute_subnetwork.subnetwork](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_network_auto_create_subnetworks"></a> [network\_auto\_create\_subnetworks](#input\_network\_auto\_create\_subnetworks) | VPC - Whether to automatically create a subnetwork or not | `bool` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | VPC - network name | `string` | n/a | yes |
| <a name="input_subnetwork_ip_cidr_range"></a> [subnetwork\_ip\_cidr\_range](#input\_subnetwork\_ip\_cidr\_range) | Subnet - IP CIDR range | `string` | n/a | yes |
| <a name="input_subnetwork_name"></a> [subnetwork\_name](#input\_subnetwork\_name) | Subnet - subnetwork name | `string` | n/a | yes |
| <a name="input_subnetwork_pods_ip_cidr_range"></a> [subnetwork\_pods\_ip\_cidr\_range](#input\_subnetwork\_pods\_ip\_cidr\_range) | Subnet - Pods IP CIDR range | `string` | n/a | yes |
| <a name="input_subnetwork_services_ip_cidr_range"></a> [subnetwork\_services\_ip\_cidr\_range](#input\_subnetwork\_services\_ip\_cidr\_range) | Subnet - Services IP CIDR range | `string` | n/a | yes |
<!-- END_TF_DOCS -->
