resource "azurerm_virtual_network" "devnetwork" {
  name                = "dev_network"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "devsubnet" {
  name                 = "dev_subnet"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.devnetwork.name
  address_prefixes     = ["10.0.1.0/24"]
}