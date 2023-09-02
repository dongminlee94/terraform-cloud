<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.80.0 |

## Resources

| Name | Type |
|------|------|
| [google_compute_address.address](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address) | resource |
| [google_compute_instance.instance](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |
| [google_compute_subnetwork.subnetwork](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_subnetwork) | data source |
| [google_service_account.service_account](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/service_account) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_name"></a> [address\_name](#input\_address\_name) | NAT IP address name | `string` | n/a | yes |
| <a name="input_compute_region"></a> [compute\_region](#input\_compute\_region) | Compute engine region | `string` | n/a | yes |
| <a name="input_image"></a> [image](#input\_image) | VM instance image | `string` | n/a | yes |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | VM instance name | `string` | n/a | yes |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | VM instance machine type | `string` | n/a | yes |
| <a name="input_sa_account_id"></a> [sa\_account\_id](#input\_sa\_account\_id) | Service Account account id | `string` | n/a | yes |
| <a name="input_sa_project_id"></a> [sa\_project\_id](#input\_sa\_project\_id) | Service Account project id | `string` | n/a | yes |
| <a name="input_sa_scopes"></a> [sa\_scopes](#input\_sa\_scopes) | Service Account scopes | `list(string)` | n/a | yes |
| <a name="input_ssh_pub_key"></a> [ssh\_pub\_key](#input\_ssh\_pub\_key) | VM instance ssh public key | `string` | n/a | yes |
| <a name="input_subnetwork_name"></a> [subnetwork\_name](#input\_subnetwork\_name) | VPC subnetwork name | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | VM instance tags | `list(string)` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | VM instance zone | `string` | n/a | yes |
<!-- END_TF_DOCS -->
