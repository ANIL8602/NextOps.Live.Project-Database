terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.14.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "backend-rg"
    storage_account_name = "backendstorage2133"
    container_name       = "backend-container"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}