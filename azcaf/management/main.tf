provider "azurerm" {
  features {}

  subscription_id = var.subscription_id_management
}
# Get the current client configuration from the AzureRM provider

data "azurerm_client_config" "current" {}

# Declare the Azure landing zones Terraform module
# and provide the connectivity configuration.

module "enterprise_scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "6.1.0" # change this to your desired version.

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm
    azurerm.management   = azurerm
  }
  default_location = "westeurope"
  # Base module configuration settings
  root_parent_id = data.azurerm_client_config.current.tenant_id
  root_id        = var.root_id
  root_name      = var.root_name

  # Configuration settings for management resources
  deploy_management_resources    = true
  configure_management_resources = local.configure_management_resources
  subscription_id_management     =  var.subscription_id_management

}
