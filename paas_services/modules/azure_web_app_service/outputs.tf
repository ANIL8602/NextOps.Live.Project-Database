output "web_app_name" {
  value = azurerm_linux_web_app.web.name
}

output "web_app_url" {
  value = "https://${azurerm_linux_web_app.web.default_hostname}"
}

output "web_app_id" {
  value = azurerm_linux_web_app.web.id
}