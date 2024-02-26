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
| [google_container_cluster.gke_cluster](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/container_cluster) | resource |
| [google_container_node_pool.gke_node_pool](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/container_node_pool) | resource |
| [google_compute_network.network](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/data-sources/compute_network) | data source |
| [google_compute_subnetwork.subnetwork](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/data-sources/compute_subnetwork) | data source |
| [google_service_account.sa](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/data-sources/service_account) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gke_auto_repair"></a> [gke\_auto\_repair](#input\_gke\_auto\_repair) | GKE node pool - auto repair | `bool` | n/a | yes |
| <a name="input_gke_auto_upgrade"></a> [gke\_auto\_upgrade](#input\_gke\_auto\_upgrade) | GKE node pool - auto upgrade | `bool` | n/a | yes |
| <a name="input_gke_cluster_name"></a> [gke\_cluster\_name](#input\_gke\_cluster\_name) | GKE cluster - cluster name | `string` | n/a | yes |
| <a name="input_gke_deletion_protection"></a> [gke\_deletion\_protection](#input\_gke\_deletion\_protection) | GKE cluster - whether to deletion protection | `bool` | n/a | yes |
| <a name="input_gke_initial_node_count"></a> [gke\_initial\_node\_count](#input\_gke\_initial\_node\_count) | GKE cluster - initial node count | `number` | n/a | yes |
| <a name="input_gke_machine_type"></a> [gke\_machine\_type](#input\_gke\_machine\_type) | GKE node pool - machine type | `string` | n/a | yes |
| <a name="input_gke_max_node_count"></a> [gke\_max\_node\_count](#input\_gke\_max\_node\_count) | GKE node pool - maximum node count | `number` | n/a | yes |
| <a name="input_gke_min_node_count"></a> [gke\_min\_node\_count](#input\_gke\_min\_node\_count) | GKE node pool - minimum node count | `number` | n/a | yes |
| <a name="input_gke_network_policy_enabled"></a> [gke\_network\_policy\_enabled](#input\_gke\_network\_policy\_enabled) | GKE cluster - network policy enabled | `bool` | n/a | yes |
| <a name="input_gke_network_policy_provider"></a> [gke\_network\_policy\_provider](#input\_gke\_network\_policy\_provider) | GKE cluster - network policy provider | `string` | n/a | yes |
| <a name="input_gke_node_count"></a> [gke\_node\_count](#input\_gke\_node\_count) | GKE node pool - node count | `number` | n/a | yes |
| <a name="input_gke_node_pool_name"></a> [gke\_node\_pool\_name](#input\_gke\_node\_pool\_name) | GKE node pool - node pool name | `string` | n/a | yes |
| <a name="input_gke_remove_default_node_pool"></a> [gke\_remove\_default\_node\_pool](#input\_gke\_remove\_default\_node\_pool) | GKE cluster - whether to remove default node pool | `bool` | n/a | yes |
| <a name="input_gke_tags"></a> [gke\_tags](#input\_gke\_tags) | GKE node pool - tags | `list(string)` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | VPC - network name | `string` | n/a | yes |
| <a name="input_sa_account_id"></a> [sa\_account\_id](#input\_sa\_account\_id) | Service Account - account id | `string` | n/a | yes |
| <a name="input_subnetwork_name"></a> [subnetwork\_name](#input\_subnetwork\_name) | Subnet - name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
