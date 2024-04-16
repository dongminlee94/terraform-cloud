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
| [aws_eks_cluster.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/eks_cluster) | resource |
| [aws_subnet.subnet](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_eks_cluster_enable"></a> [eks\_cluster\_enable](#input\_eks\_cluster\_enable) | EKS Cluster - enable/disable | `bool` | n/a | yes |
| <a name="input_eks_cluster_endpoint_private_access"></a> [eks\_cluster\_endpoint\_private\_access](#input\_eks\_cluster\_endpoint\_private\_access) | EKS Cluster - endpoint private access | `bool` | n/a | yes |
| <a name="input_eks_cluster_endpoint_public_access"></a> [eks\_cluster\_endpoint\_public\_access](#input\_eks\_cluster\_endpoint\_public\_access) | EKS Cluster - endpoint public access | `bool` | n/a | yes |
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | EKS Cluster - name | `string` | n/a | yes |
| <a name="input_eks_cluster_version"></a> [eks\_cluster\_version](#input\_eks\_cluster\_version) | EKS Cluster - version | `string` | n/a | yes |
| <a name="input_eks_service_role_arn"></a> [eks\_service\_role\_arn](#input\_eks\_service\_role\_arn) | EKS Cluster - service role arn | `string` | n/a | yes |
| <a name="input_eks_subnet_names"></a> [eks\_subnet\_names](#input\_eks\_subnet\_names) | Subnet - subnet names | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eks_cluster_name"></a> [eks\_cluster\_name](#output\_eks\_cluster\_name) | n/a |
<!-- END_TF_DOCS -->
