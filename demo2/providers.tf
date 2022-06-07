terraform {
  cloud {
    organization = "terraform-on-azure-pm-test"

    workspaces {
      name = "playground2"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.9.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "random" {}
