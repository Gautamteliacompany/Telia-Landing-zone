resource "azurerm_subnet" "subnet" {
	for_each = { for key, value in var.subnet_data : key => value if value.enabled }
		
	# Required
	name			= each.value.name
	resource_group_name	= each.value.resource_group_name
	virtual_network_name	= each.value.virtual_network_name
	address_prefixes	= each.value.address_prefixes

}