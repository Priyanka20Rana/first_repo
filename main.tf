terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "backend-rg"
    storage_account_name = "backendstore123"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features{}
subscription_id = "5fbead97-423e-4814-809c-114db991d911"
  }
resource "azurerm_resource_group" "timtim" {
  name     = "timtim-rg"
  location = "central india"
}