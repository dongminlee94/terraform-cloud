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
| [google_container_node_pool.node_pool](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/container_node_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gke_cluster_name"></a> [gke\_cluster\_name](#input\_gke\_cluster\_name) | GKE Cluster - name | `string` | n/a | yes |
| <a name="input_gke_node_pool_auto_repair"></a> [gke\_node\_pool\_auto\_repair](#input\_gke\_node\_pool\_auto\_repair) | GKE Node Pool - auto repair | `bool` | n/a | yes |
| <a name="input_gke_node_pool_auto_upgrade"></a> [gke\_node\_pool\_auto\_upgrade](#input\_gke\_node\_pool\_auto\_upgrade) | GKE Node Pool - auto upgrade | `bool` | n/a | yes |
| <a name="input_gke_node_pool_enable"></a> [gke\_node\_pool\_enable](#input\_gke\_node\_pool\_enable) | GKE Node Pool - enable/disable | `bool` | n/a | yes |
| <a name="input_gke_node_pool_machine_type"></a> [gke\_node\_pool\_machine\_type](#input\_gke\_node\_pool\_machine\_type) | GKE Node Pool - machine type | `string` | n/a | yes |
| <a name="input_gke_node_pool_max_node_count"></a> [gke\_node\_pool\_max\_node\_count](#input\_gke\_node\_pool\_max\_node\_count) | GKE Node Pool - maximum node count | `number` | n/a | yes |
| <a name="input_gke_node_pool_min_node_count"></a> [gke\_node\_pool\_min\_node\_count](#input\_gke\_node\_pool\_min\_node\_count) | GKE Node Pool - minimum node count | `number` | n/a | yes |
| <a name="input_gke_node_pool_name"></a> [gke\_node\_pool\_name](#input\_gke\_node\_pool\_name) | GKE Node Pool - node pool name | `string` | n/a | yes |
| <a name="input_gke_node_pool_node_count"></a> [gke\_node\_pool\_node\_count](#input\_gke\_node\_pool\_node\_count) | GKE Node Pool - node count | `number` | n/a | yes |
| <a name="input_gke_node_pool_sa_email"></a> [gke\_node\_pool\_sa\_email](#input\_gke\_node\_pool\_sa\_email) | GKE Node Pool - service account email | `string` | n/a | yes |
| <a name="input_gke_node_pool_tags"></a> [gke\_node\_pool\_tags](#input\_gke\_node\_pool\_tags) | GKE Node Pool - tags | `list(string)` | n/a | yes |
<!-- END_TF_DOCS -->
