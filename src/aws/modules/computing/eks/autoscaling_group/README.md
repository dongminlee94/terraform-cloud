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
| [aws_autoscaling_group_tag.eks_asg_tag](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/resources/autoscaling_group_tag) | resource |
| [aws_autoscaling_groups.eks_asgs](https://registry.terraform.io/providers/hashicorp/aws/5.20.0/docs/data-sources/autoscaling_groups) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_eks_asg_tag_enable"></a> [eks\_asg\_tag\_enable](#input\_eks\_asg\_tag\_enable) | EKS Autoscaling Group Tag - enable/disable | `bool` | n/a | yes |
| <a name="input_eks_node_group_name"></a> [eks\_node\_group\_name](#input\_eks\_node\_group\_name) | EKS Autoscaling Group Tag - node group name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
