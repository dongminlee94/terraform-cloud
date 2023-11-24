<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.7.0 |

## Resources

| Name | Type |
|------|------|
| [google_compute_address.compute_address](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address) | resource |
| [google_compute_instance.compute_instance](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |
| [google_compute_resource_policy.compute_resource_policy](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_resource_policy) | resource |
| [google_compute_subnetwork.subnetwork](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_subnetwork) | data source |
| [google_service_account.service_account](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/service_account) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compute_address_name"></a> [compute\_address\_name](#input\_compute\_address\_name) | NAT IP compute address name | `string` | n/a | yes |
| <a name="input_compute_image"></a> [compute\_image](#input\_compute\_image) | VM instance image | `string` | n/a | yes |
| <a name="input_compute_instance_name"></a> [compute\_instance\_name](#input\_compute\_instance\_name) | VM instance name | `string` | n/a | yes |
| <a name="input_compute_machine_type"></a> [compute\_machine\_type](#input\_compute\_machine\_type) | VM instance machine type | `string` | n/a | yes |
| <a name="input_compute_public_key"></a> [compute\_public\_key](#input\_compute\_public\_key) | VM instance ssh public key | `string` | n/a | yes |
| <a name="input_compute_service_scopes"></a> [compute\_service\_scopes](#input\_compute\_service\_scopes) | Service scopes | `list(string)` | n/a | yes |
| <a name="input_compute_size"></a> [compute\_size](#input\_compute\_size) | VM isntance disk volume size | `number` | n/a | yes |
| <a name="input_compute_tags"></a> [compute\_tags](#input\_compute\_tags) | VM instance tags | `list(string)` | n/a | yes |
| <a name="input_compute_user_name"></a> [compute\_user\_name](#input\_compute\_user\_name) | VM instance user name | `string` | n/a | yes |
| <a name="input_compute_zone"></a> [compute\_zone](#input\_compute\_zone) | VM instance zone | `string` | n/a | yes |
| <a name="input_rp_days_in_cycle"></a> [rp\_days\_in\_cycle](#input\_rp\_days\_in\_cycle) | Resource policy - schedule interval | `number` | n/a | yes |
| <a name="input_rp_label"></a> [rp\_label](#input\_rp\_label) | Resource policy - tag | `string` | n/a | yes |
| <a name="input_rp_max_retention_days"></a> [rp\_max\_retention\_days](#input\_rp\_max\_retention\_days) | Resource policy - max retention days | `number` | n/a | yes |
| <a name="input_rp_name"></a> [rp\_name](#input\_rp\_name) | Resource policy - name | `string` | n/a | yes |
| <a name="input_rp_start_time"></a> [rp\_start\_time](#input\_rp\_start\_time) | Resource policy - start time | `string` | n/a | yes |
| <a name="input_sa_account_id"></a> [sa\_account\_id](#input\_sa\_account\_id) | Service Account account id | `string` | n/a | yes |
| <a name="input_subnetwork_name"></a> [subnetwork\_name](#input\_subnetwork\_name) | VPC subnetwork name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
