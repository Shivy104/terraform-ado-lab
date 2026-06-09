terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.74.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "987a65a0-736a-4e2d-b5d6-e128ea597ab6"
}