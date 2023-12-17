<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.9.0 |

## Resources

| Name | Type |
|------|------|
| [google_container_cluster.gke_cluster](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_cluster) | resource |
| [google_compute_network.network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_network) | data source |
| [google_compute_subnetwork.subnetwork](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_subnetwork) | data source |
| [google_service_account.sa](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/service_account) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gke_cluster_name"></a> [gke\_cluster\_name](#input\_gke\_cluster\_name) | GKE - cluster name | `string` | n/a | yes |
| <a name="input_gke_cluster_secondary_range_name"></a> [gke\_cluster\_secondary\_range\_name](#input\_gke\_cluster\_secondary\_range\_name) | GKE - cluster secondary range name | `string` | n/a | yes |
| <a name="input_gke_machine_type"></a> [gke\_machine\_type](#input\_gke\_machine\_type) | GKE - machine type | `string` | n/a | yes |
| <a name="input_gke_max_node_count"></a> [gke\_max\_node\_count](#input\_gke\_max\_node\_count) | GKE - maximum node count | `number` | n/a | yes |
| <a name="input_gke_min_node_count"></a> [gke\_min\_node\_count](#input\_gke\_min\_node\_count) | GKE - minimum node count | `number` | n/a | yes |
| <a name="input_gke_network_policy_enabled"></a> [gke\_network\_policy\_enabled](#input\_gke\_network\_policy\_enabled) | GKE - network policy enabled | `bool` | n/a | yes |
| <a name="input_gke_network_policy_provider"></a> [gke\_network\_policy\_provider](#input\_gke\_network\_policy\_provider) | GKE - network policy provider | `string` | n/a | yes |
| <a name="input_gke_node_count"></a> [gke\_node\_count](#input\_gke\_node\_count) | GKE - node count | `number` | n/a | yes |
| <a name="input_gke_node_pool_name"></a> [gke\_node\_pool\_name](#input\_gke\_node\_pool\_name) | GKE - node pool name | `string` | n/a | yes |
| <a name="input_gke_services_secondary_range_name"></a> [gke\_services\_secondary\_range\_name](#input\_gke\_services\_secondary\_range\_name) | GKE - services secondary range name | `string` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | VPC - network name | `string` | n/a | yes |
| <a name="input_sa_account_id"></a> [sa\_account\_id](#input\_sa\_account\_id) | Service Account - account id | `string` | n/a | yes |
| <a name="input_subnetwork_name"></a> [subnetwork\_name](#input\_subnetwork\_name) | Subnet - name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
