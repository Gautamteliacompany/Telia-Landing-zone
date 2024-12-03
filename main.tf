module "connectivity" {
  source = "./azcaf/connectivity"
}

module "management" {
  source = "./azcaf/management"
}

module "core" {
  source = "./azcaf/core"
}

module "hub-spoke" {
  source = "./azure-hub-and-spoke"
}

module "nsg" {
  source = "./terrform-resources/modules/azure/network_security_group"
}

module "subnet" {
  source = "./terrform-resources/modules/azure/subnet"
}




