data "azurerm_subscription" "subscription" {
}

resource "azuread_application" "vm_app" {
  display_name = var.display_name
}

resource "azuread_service_principal" "vm_sp" {
  application_id = azuread_application.vm_app.application_id
}

resource "azurerm_role_assignment" "vm_ra" {
  scope                = data.azurerm_subscription.subscription.id
  role_definition_name = var.role_definition_name
  principal_id         = azuread_service_principal.vm_sp.object_id
}
