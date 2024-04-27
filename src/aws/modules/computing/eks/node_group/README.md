<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.20.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.20.0 |

## Resources

| Name | Type |
|------|------|
| [aws_eks_node_group.node_group](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/eks_node_group) | resource |
| [aws_subnet.subnet](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Cluster - name | `string` | n/a | yes |
| <a name="input_node_group_ami"></a> [node\_group\_ami](#input\_node\_group\_ami) | Node Group - AMI | `string` | n/a | yes |
| <a name="input_node_group_desired_size"></a> [node\_group\_desired\_size](#input\_node\_group\_desired\_size) | Node Group - desired size | `number` | n/a | yes |
| <a name="input_node_group_disk_size"></a> [node\_group\_disk\_size](#input\_node\_group\_disk\_size) | Node Group - disk size | `string` | n/a | yes |
| <a name="input_node_group_enable"></a> [node\_group\_enable](#input\_node\_group\_enable) | Node Group - enable/disable | `bool` | n/a | yes |
| <a name="input_node_group_instance_types"></a> [node\_group\_instance\_types](#input\_node\_group\_instance\_types) | Node Group - instance type | `list(string)` | n/a | yes |
| <a name="input_node_group_max_size"></a> [node\_group\_max\_size](#input\_node\_group\_max\_size) | Node Group - max size | `number` | n/a | yes |
| <a name="input_node_group_max_unavailable"></a> [node\_group\_max\_unavailable](#input\_node\_group\_max\_unavailable) | Node Group - max unavailable | `number` | n/a | yes |
| <a name="input_node_group_min_size"></a> [node\_group\_min\_size](#input\_node\_group\_min\_size) | Node Group - min size | `number` | n/a | yes |
| <a name="input_node_group_name"></a> [node\_group\_name](#input\_node\_group\_name) | Node Group - name | `string` | n/a | yes |
| <a name="input_node_role_arn"></a> [node\_role\_arn](#input\_node\_role\_arn) | Node Group - node role arn | `string` | n/a | yes |
| <a name="input_subnet_names"></a> [subnet\_names](#input\_subnet\_names) | Subnet - subnet names | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eks_node_group_name"></a> [eks\_node\_group\_name](#output\_eks\_node\_group\_name) | n/a |
<!-- END_TF_DOCS -->
