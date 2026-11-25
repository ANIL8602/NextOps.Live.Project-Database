resource "azurerm_linux_web_app" "web" {
  name                = var.web_app_name
  resource_group_name  = var.resource_group_name
  location             = var.location
  service_plan_id      = var.app_service_plan_id
  https_only           = true

  site_config {
    always_on = false
  minimum_tls_version = "1.2"
  }
}