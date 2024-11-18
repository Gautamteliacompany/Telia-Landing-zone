terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.107"
    }
 }
}

provider "azurerm" {
  features {
  }
}

module "lz-vending" {
    for_each = var.lz_vending
  source   = "Azure/lz-vending/azurerm"
  version  = "4.1.4"
  location = "westeurope"

  subscription_alias_enabled = true
  subscription_alias_name    = each.value.subscription_alias_name
  subscription_billing_scope = "/providers/Microsoft.Billing/billingAccounts/d896eeca-34cb-48f5-9873-612d3c03bfc7"
  subscription_display_name  = each.value.subscription_display_name
  subscription_workload      = each.value.subscription_workload
}