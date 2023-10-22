<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | 2.44.0 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.77.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_role_assignment.vm_ra](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azuread_service_principal.service_principal](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/service_principal) | data source |
| [azurerm_subscription.subscription](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | Azure application display name | `string` | n/a | yes |
| <a name="input_role_definition_name"></a> [role\_definition\_name](#input\_role\_definition\_name) | Azure role assignment definition name | `string` | n/a | yes |
<!-- END_TF_DOCS -->
