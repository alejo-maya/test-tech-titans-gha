##################################################################################
# SERVICE APP
##################################################################################
resource "azurerm_resource_group" "webapp" {
  name     = var.resource_group_name
  location = var.location
}
resource "azurerm_service_plan" "webapp" {
  name                = var.service_plan_name
  location            = azurerm_resource_group.webapp.location
  resource_group_name = azurerm_resource_group.webapp.name
  os_type             = var.service_plan_os_type
  sku_name            = var.service_plan_sku_name

}

resource "azurerm_linux_web_app" "webapp" {
  name                = "${lower(var.naming_prefix)}"
  location            = azurerm_resource_group.webapp.location
  resource_group_name = azurerm_resource_group.webapp.name
  service_plan_id     = azurerm_service_plan.webapp.id
  https_only          = true

  site_config {
    always_on = false
    application_stack {
      node_version = "16-lts"
    }
  }
}