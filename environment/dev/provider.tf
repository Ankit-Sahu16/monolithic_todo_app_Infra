terraform {
required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
}

provider "azurerm" {
  features {}
subscription_id = "d9a3fe49-12e0-4ae0-9d40-e2b9961943db"
  }
