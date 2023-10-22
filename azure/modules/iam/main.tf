data "azurerm_subscription" "subscription" {
}

data "azuread_service_principal" "service_principal" {
  display_name = var.display_name
}

resource "azurerm_role_assignment" "vm_ra" {
  scope                = data.azurerm_subscription.subscription.id
  role_definition_name = var.role_definition_name
  principal_id         = data.azuread_service_principal.service_principal.object_id
}
