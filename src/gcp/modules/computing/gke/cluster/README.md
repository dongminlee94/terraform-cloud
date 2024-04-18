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
| [google_container_cluster.cluster](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/container_cluster) | resource |
| [google_compute_network.network](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/data-sources/compute_network) | data source |
| [google_compute_subnetwork.subnetwork](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/data-sources/compute_subnetwork) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gke_cluster_deletion_protection"></a> [gke\_cluster\_deletion\_protection](#input\_gke\_cluster\_deletion\_protection) | GKE Cluster - whether to deletion protection | `bool` | n/a | yes |
| <a name="input_gke_cluster_initial_node_count"></a> [gke\_cluster\_initial\_node\_count](#input\_gke\_cluster\_initial\_node\_count) | GKE Cluster - initial node count | `number` | n/a | yes |
| <a name="input_gke_cluster_name"></a> [gke\_cluster\_name](#input\_gke\_cluster\_name) | GKE Cluster - cluster name | `string` | n/a | yes |
| <a name="input_gke_cluster_remove_default_node_pool"></a> [gke\_cluster\_remove\_default\_node\_pool](#input\_gke\_cluster\_remove\_default\_node\_pool) | GKE Cluster - whether to remove default node pool | `bool` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | VPC - network name | `string` | n/a | yes |
| <a name="input_subnetwork_name"></a> [subnetwork\_name](#input\_subnetwork\_name) | Subnet - name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
