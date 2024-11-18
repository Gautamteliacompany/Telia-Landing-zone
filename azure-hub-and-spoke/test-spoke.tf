resource "azurerm_virtual_network" "testnetwork" {
  name                = "testnetwork"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  address_space       = ["10.1.0.0/16"]
}

resource "azurerm_subnet" "testsubnet" {
  name                 = "testsubnet"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.testnetwork.name
  address_prefixes     = ["10.1.1.0/24"]
}