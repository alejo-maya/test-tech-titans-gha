terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "a5a86e7a-a5a4-4a0f-98b6-605001cf22b2"
  tenant_id       = "b25036e3-de39-4fec-a4aa-bda41b870d38"
  features {}
}