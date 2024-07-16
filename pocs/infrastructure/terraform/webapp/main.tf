resource "azurerm_service_plan" "webapp" {
  name                = var.service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = var.service_plan_os_type
  sku_name            = var.service_plan_sku_name

}

resource "azurerm_linux_web_app" "webapp" {
  name                = lower(var.naming_prefix)
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_service_plan.webapp.id
  https_only          = true

  site_config {
    always_on = false
    application_stack {
      docker_registry_url      = var.docker_registry_url
      docker_image_name        = var.docker_image_name
      docker_registry_username = var.docker_registry_username
      docker_registry_password = var.docker_registry_password
    }
  }
}