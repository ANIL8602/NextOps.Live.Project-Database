output "server_fqdn" {
  value = azurerm_postgresql_flexible_server.db.fqdn
}

output "database_name" {
  value = azurerm_postgresql_flexible_server_database.database.name
}

output "server_id" {
  value = azurerm_postgresql_flexible_server.db.id
}