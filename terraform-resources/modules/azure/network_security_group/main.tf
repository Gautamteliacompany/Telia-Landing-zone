# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id_connectivity
}

# Create a resource group
resource "azurerm_resource_group" "nsg-rg" {
  name     = "telia-nsg_resource_group"
  location = "westeurope"
}
# Use NSG module
module "network_security_group" {
  source              = "./rules"
  nsg_name            = "telia-networksecuritygroup"
  location            = azurerm_resource_group.nsg-rg.location
  resource_group_name = azurerm_resource_group.nsg-rg.name


  # Define Security rules
  security_rules = [
    {
      name                       = "Allow-HTTPS"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "443"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    },
    {
      name                       = "Allow-SSH"
      priority                   = 200
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "22"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }  
  ]
}

output "nsg_id" {
    value = module.network_security_group.nsg_id  
}


