<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_docker"></a> [docker](#requirement\_docker) | ~> 3.0.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_docker"></a> [docker](#provider\_docker) | 3.0.2 |

## Resources

| Name | Type |
|------|------|
| [docker_container.nginx](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/container) | resource |
| [docker_image.nginx](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/image) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nginx_external_port"></a> [nginx\_external\_port](#input\_nginx\_external\_port) | nginx external port | `number` | `80` | no |
| <a name="input_nginx_internal_port"></a> [nginx\_internal\_port](#input\_nginx\_internal\_port) | nginx internal port | `number` | `80` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_container_id"></a> [container\_id](#output\_container\_id) | n/a |
| <a name="output_image_id"></a> [image\_id](#output\_image\_id) | n/a |
<!-- END_TF_DOCS -->
