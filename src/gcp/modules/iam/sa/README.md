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
| [google_service_account.sa](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_sa_enable"></a> [sa\_enable](#input\_sa\_enable) | Service Account - enable/disable | `bool` | n/a | yes |
| <a name="input_sa_name"></a> [sa\_name](#input\_sa\_name) | Service Account - name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_account_email"></a> [service\_account\_email](#output\_service\_account\_email) | n/a |
<!-- END_TF_DOCS -->
