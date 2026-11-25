output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

output "app_service_plan_name" {
  value = module.app_service.app_service_plan_name
}

output "frontend_url" {
  value = module.frontend.web_app_url
}

output "backend_url" {
  value = module.backend.web_app_url
}

output "postgresql_server_fqdn" {
  value = module.postgresql.server_fqdn
}

output "database_name" {
  value = module.postgresql.database_name
}