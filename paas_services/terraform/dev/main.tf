module "resource_group" {
  source = "../../modules/azure_resource_groups"

  resource_group_name = var.resource_group_name
  location            = var.location
}

module "app_service" {
  source = "../../modules/azure_app_service"

  app_service_plan_name = var.app_service_plan_name
  resource_group_name   = module.resource_group.resource_group_name
  location              = module.resource_group.resource_group_location
  sku_name              = var.app_service_sku

  depends_on = [module.resource_group]
}

module "frontend" {
  source = "../../modules/azure_web_app_service"

  web_app_name        = var.frontend_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
  app_service_plan_id = module.app_service.app_service_plan_id

  depends_on = [module.app_service]
}

module "backend" {
  source = "../../modules/azure_web_app_service"

  web_app_name        = var.backend_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
  app_service_plan_id = module.app_service.app_service_plan_id

  depends_on = [module.app_service]
}

module "postgresql" {
  source = "../../modules/azure_postgresql_flexible_server"

  server_name         = var.postgresql_server_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
  postgresql_version  = var.postgresql_version
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  database_name       = var.database_name
  sku_name            = var.postgresql_sku

  depends_on = [module.resource_group]
}