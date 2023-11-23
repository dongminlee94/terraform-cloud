<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.26.0 |

## Resources

| Name | Type |
|------|------|
| [aws_dlm_lifecycle_policy.ebs_snapshot_backup](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dlm_lifecycle_policy) | resource |
| [aws_eks_cluster.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster) | resource |
| [aws_eks_node_group.eks_node_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_iam_role.eks_nodes_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_role) | data source |
| [aws_iam_role.eks_service_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_role) | data source |
| [aws_security_group.sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/security_group) | data source |
| [aws_subnet.private_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_subnet.public_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dlm_description"></a> [dlm\_description](#input\_dlm\_description) | Data Lifecycle Manager - description | `string` | n/a | yes |
| <a name="input_dlm_resource_types"></a> [dlm\_resource\_types](#input\_dlm\_resource\_types) | Data Lifecycle Manager - resource types | `list(string)` | n/a | yes |
| <a name="input_dlm_schedule_copy_tags"></a> [dlm\_schedule\_copy\_tags](#input\_dlm\_schedule\_copy\_tags) | Data Lifecycle Manager - schedule copy tags | `bool` | n/a | yes |
| <a name="input_dlm_schedule_count"></a> [dlm\_schedule\_count](#input\_dlm\_schedule\_count) | Data Lifecycle Manager - schedule count | `number` | n/a | yes |
| <a name="input_dlm_schedule_interval"></a> [dlm\_schedule\_interval](#input\_dlm\_schedule\_interval) | Data Lifecycle Manager - schedule interval | `number` | n/a | yes |
| <a name="input_dlm_schedule_interval_unit"></a> [dlm\_schedule\_interval\_unit](#input\_dlm\_schedule\_interval\_unit) | Data Lifecycle Manager - schedule interval unit | `string` | n/a | yes |
| <a name="input_dlm_schedule_name"></a> [dlm\_schedule\_name](#input\_dlm\_schedule\_name) | Data Lifecycle Manager - schedule name | `string` | n/a | yes |
| <a name="input_dlm_schedule_tags_to_add"></a> [dlm\_schedule\_tags\_to\_add](#input\_dlm\_schedule\_tags\_to\_add) | Data Lifecycle Manager - schedule tags to add | `string` | n/a | yes |
| <a name="input_dlm_schedule_times"></a> [dlm\_schedule\_times](#input\_dlm\_schedule\_times) | Data Lifecycle Manager - schedule times | `list(string)` | n/a | yes |
| <a name="input_dlm_state"></a> [dlm\_state](#input\_dlm\_state) | Data Lifecycle Manager - state | `string` | n/a | yes |
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | EKS Cluster - name | `string` | n/a | yes |
| <a name="input_eks_node_group_ami"></a> [eks\_node\_group\_ami](#input\_eks\_node\_group\_ami) | EKS Node Group - AMI | `string` | n/a | yes |
| <a name="input_eks_node_group_desired_size"></a> [eks\_node\_group\_desired\_size](#input\_eks\_node\_group\_desired\_size) | EKS Node Group - desired size | `number` | n/a | yes |
| <a name="input_eks_node_group_disk_size"></a> [eks\_node\_group\_disk\_size](#input\_eks\_node\_group\_disk\_size) | EKS Node Group - disk size | `string` | n/a | yes |
| <a name="input_eks_node_group_instance_types"></a> [eks\_node\_group\_instance\_types](#input\_eks\_node\_group\_instance\_types) | EKS Node Group - instance type | `list(string)` | n/a | yes |
| <a name="input_eks_node_group_max_size"></a> [eks\_node\_group\_max\_size](#input\_eks\_node\_group\_max\_size) | EKS Node Group - max size | `number` | n/a | yes |
| <a name="input_eks_node_group_max_unavailable"></a> [eks\_node\_group\_max\_unavailable](#input\_eks\_node\_group\_max\_unavailable) | EKS Node Group - max unavailable | `number` | n/a | yes |
| <a name="input_eks_node_group_min_size"></a> [eks\_node\_group\_min\_size](#input\_eks\_node\_group\_min\_size) | EKS Node Group - min size | `number` | n/a | yes |
| <a name="input_eks_node_group_name"></a> [eks\_node\_group\_name](#input\_eks\_node\_group\_name) | EKS Node Group - name | `string` | n/a | yes |
| <a name="input_eks_nodes_role_name"></a> [eks\_nodes\_role\_name](#input\_eks\_nodes\_role\_name) | IAM - EKS nodes role name | `string` | n/a | yes |
| <a name="input_eks_service_role_name"></a> [eks\_service\_role\_name](#input\_eks\_service\_role\_name) | IAM - EKS service role name | `string` | n/a | yes |
| <a name="input_private_subnet_names"></a> [private\_subnet\_names](#input\_private\_subnet\_names) | Subnet - private subnet names | `list(string)` | n/a | yes |
| <a name="input_public_subnet_names"></a> [public\_subnet\_names](#input\_public\_subnet\_names) | Subnet - public subnet names | `list(string)` | n/a | yes |
| <a name="input_sg_name"></a> [sg\_name](#input\_sg\_name) | Security Group - name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
