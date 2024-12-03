
variable "nsg_name" {
  description = "The name of Network Security Group"
  type        = string
}

variable "location" {
  description = "The location where NSG will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of resource group where NSG will be created"
}

variable "security_rules" {
  description = "List of security rules to be applied to NSG"
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
  default = []

}