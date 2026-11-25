terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.15.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "ak-rg"
    storage_account_name = "akstorage114912"
    container_name       = "akcontainer114912"
    key                  = "nextops-paas-dev.tfstate"
  }

}

provider "azurerm" {
  features {}
}