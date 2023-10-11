<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.80.0 |

## Resources

| Name | Type |
|------|------|
| [google_project_iam_binding.iam_binding](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_binding) | resource |
| [google_service_account.service_account](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_iam_project_id"></a> [iam\_project\_id](#input\_iam\_project\_id) | IAM Project ID | `string` | n/a | yes |
| <a name="input_iam_role"></a> [iam\_role](#input\_iam\_role) | IAM role | `string` | n/a | yes |
| <a name="input_sa_account_id"></a> [sa\_account\_id](#input\_sa\_account\_id) | Service Account id | `string` | n/a | yes |
| <a name="input_sa_display_name"></a> [sa\_display\_name](#input\_sa\_display\_name) | Service Account display name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
