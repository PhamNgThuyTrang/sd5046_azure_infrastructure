output "id" {
    description = "The ID of the Container Registry."
    value = azurerm_container_registry.acr.id
}

output "login_server" {
    description = "The URL that can be used to log into the container registry."
    value = azurerm_container_registry.acr.login_server
}

output "admin_username" {
    description = "The Username associated with the Container Registry Admin account - if the admin account is enabled."
    value = azurerm_container_registry.acr.admin_username
}

output "admin_password" {
    description = "The Password associated with the Container Registry Admin account - if the admin account is enabled."
    value = azurerm_container_registry.acr.admin_password
}

output "identity" {
    description = "An identity block as defined below. An identity block exports the following"
    value = azurerm_container_registry.acr.identity
}