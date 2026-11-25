resource "azurerm_postgresql_flexible_server" "db" {
  name                   = var.server_name
  resource_group_name     = var.resource_group_name
  location               = var.location
  version                = var.postgresql_version
  administrator_login     = var.admin_username
  administrator_password  = var.admin_password
  storage_mb             = 32768
  sku_name               = var.sku_name
  backup_retention_days  = 7
  public_network_access_enabled = true
}

resource "azurerm_postgresql_flexible_server_database" "database" {
  name      = var.database_name
  server_id = azurerm_postgresql_flexible_server.db.id
  charset   = "UTF8"
  collation = "en_US.utf8"
}