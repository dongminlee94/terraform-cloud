<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.80.0 |

## Resources

| Name | Type |
|------|------|
| [google_compute_firewall.firewall_ssh](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_network.network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) | resource |
| [google_compute_subnetwork.subnetwork](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_firewall_ports"></a> [firewall\_ports](#input\_firewall\_ports) | Firewall port numbers | `list(string)` | n/a | yes |
| <a name="input_firewall_protocol"></a> [firewall\_protocol](#input\_firewall\_protocol) | Firewall protocol | `string` | n/a | yes |
| <a name="input_firewall_source_ranges"></a> [firewall\_source\_ranges](#input\_firewall\_source\_ranges) | Firewall source ranges | `list(string)` | n/a | yes |
| <a name="input_firewall_ssh_name"></a> [firewall\_ssh\_name](#input\_firewall\_ssh\_name) | Firewall ssh name | `string` | n/a | yes |
| <a name="input_firewall_target_tags"></a> [firewall\_target\_tags](#input\_firewall\_target\_tags) | Firewall target tags | `list(string)` | n/a | yes |
| <a name="input_network_auto_create_subnetworks"></a> [network\_auto\_create\_subnetworks](#input\_network\_auto\_create\_subnetworks) | Whether to automatically create a subnetwork or not | `bool` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | VPC network name | `string` | n/a | yes |
| <a name="input_subnetwork_ip_cidr_range"></a> [subnetwork\_ip\_cidr\_range](#input\_subnetwork\_ip\_cidr\_range) | VPC subnetwork IP CIDR range | `string` | n/a | yes |
| <a name="input_subnetwork_name"></a> [subnetwork\_name](#input\_subnetwork\_name) | VPC subnetwork name | `string` | n/a | yes |
| <a name="input_subnetwork_region"></a> [subnetwork\_region](#input\_subnetwork\_region) | VPC subnetwork region | `string` | n/a | yes |
<!-- END_TF_DOCS -->
