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
| [google_service_account.gce_sa](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/service_account) | resource |
| [google_service_account.gke_sa](https://registry.terraform.io/providers/hashicorp/google/5.5.0/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | Service Account - account id | `string` | n/a | yes |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | Service Account - display name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
