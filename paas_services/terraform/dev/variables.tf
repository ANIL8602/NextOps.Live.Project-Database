variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "app_service_plan_name" {
  type = string
}

variable "app_service_sku" {
  type = string
}

variable "frontend_name" {
  type = string
}

variable "backend_name" {
  type = string
}

variable "postgresql_server_name" {
  type = string
}

variable "postgresql_version" {
  type = string
}

variable "database_name" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type      = string
  sensitive = true
}

variable "postgresql_sku" {
  type = string
}