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
| [aws_autoscaling_group_tag.autoscaling_group_tag](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/autoscaling_group_tag) | resource |
| [aws_eks_node_group.node_group](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/data-sources/eks_node_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_autoscaling_group_tag_enable"></a> [autoscaling\_group\_tag\_enable](#input\_autoscaling\_group\_tag\_enable) | Autoscaling Group Tag - enable/disable | `bool` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Cluster - name | `string` | n/a | yes |
| <a name="input_node_group_name"></a> [node\_group\_name](#input\_node\_group\_name) | Node Group - name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
