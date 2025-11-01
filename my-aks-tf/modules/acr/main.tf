terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm",
        version = "3.107.0"
    }
  }
}
resource "azurerm_container_registry" "acr" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.region
  sku                 = "Standard"
}

resource "azurerm_role_assignment" "k8s" {
  principal_id                     = var.principal_id
  role_definition_name             = "AcrPull"
  scope                            = azurerm_container_registry.acr.id
  skip_service_principal_aad_check = true
}