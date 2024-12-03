subnet_data = {
    "subnet1" = {
        enabled     = true
        name        = "subnet1"
        resource_group_name = "telia-rg-westeurope"
        virtual_network_name = "teliacompany-hub-westeurope"
        address_prefixes = ["10.100.1.0/24"]
        service_endpoint_policy_ids ={}
    }
    "subnet2" = {
        enabled     = true
        name        = "subnet2"
        resource_group_name = "telia-rg-westeurope"
        virtual_network_name = "teliacompany-hub-westeurope"
        address_prefixes = ["10.100.2.0/24"]
        service_endpoint_policy_ids ={}
    }
}