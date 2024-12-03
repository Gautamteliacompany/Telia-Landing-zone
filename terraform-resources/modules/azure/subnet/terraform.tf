terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.107"
    }
  }
  backend "local" {
    path = "./connectivity.tfstate"
  }
}
provider "azurerm" {
    features {}
      subscription_id = "4b366cd2-b9cc-46ef-8ec5-ede445683eec"
      
    }
  