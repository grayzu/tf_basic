terraform {
  # cloud {
  #   organization = "terraform-on-azure-pm-test"

  #   workspaces {
  #     name = "playground"
  #   }
  # }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.9.0"
    }

    azapi = {
      source  = "azure/azapi"
      version = "0.3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azapi" {}
