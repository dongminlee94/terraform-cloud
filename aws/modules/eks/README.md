<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.26.0 |

## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster) | resource |
| [aws_eks_node_group.eks_node_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_iam_role.eks_nodes_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_role) | data source |
| [aws_iam_role.eks_service_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_role) | data source |
| [aws_security_group.sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/security_group) | data source |
| [aws_subnet.subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | EKS Cluster - name | `string` | n/a | yes |
| <a name="input_eks_node_group_desired_size"></a> [eks\_node\_group\_desired\_size](#input\_eks\_node\_group\_desired\_size) | EKS Node Group - desired size | `number` | n/a | yes |
| <a name="input_eks_node_group_max_size"></a> [eks\_node\_group\_max\_size](#input\_eks\_node\_group\_max\_size) | EKS Node Group - max size | `number` | n/a | yes |
| <a name="input_eks_node_group_min_size"></a> [eks\_node\_group\_min\_size](#input\_eks\_node\_group\_min\_size) | EKS Node Group - min size | `number` | n/a | yes |
| <a name="input_eks_node_group_name"></a> [eks\_node\_group\_name](#input\_eks\_node\_group\_name) | EKS Node Group - name | `string` | n/a | yes |
| <a name="input_eks_nodes_role_name"></a> [eks\_nodes\_role\_name](#input\_eks\_nodes\_role\_name) | IAM - EKS nodes role name | `string` | n/a | yes |
| <a name="input_eks_service_role_name"></a> [eks\_service\_role\_name](#input\_eks\_service\_role\_name) | IAM - EKS service role name | `string` | n/a | yes |
| <a name="input_sg_name"></a> [sg\_name](#input\_sg\_name) | Security Group - name | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | Subnet - Public Subnet IDs | `list(string)` | n/a | yes |
<!-- END_TF_DOCS -->
