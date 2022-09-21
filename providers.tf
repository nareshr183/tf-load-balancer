terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.15.0"
    }
  }
}

provider "azuread" {
  tenant_id = "9e247978-a17b-4dfd-9577-a3a5a2f66335"
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "a9343961-8da0-4a12-bf0f-4ed594492ea4"
  client_id = "1c56a96e-f967-4019-9e8a-c81f84541cf3"
  client_secret = "FuJ8Q~7q5.Og.4JfOD~6YrbUALZCxM9QU-1J.ca4"
  tenant_id = "9e247978-a17b-4dfd-9577-a3a5a2f66335"
}