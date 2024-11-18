locals {
  custom_landing_zones = {
    "${var.root_id}-Production" = {
      display_name               = "${upper(var.root_id)} Production"
      parent_management_group_id = "${var.root_id}-landing-zones"
      subscription_ids           = ["03cee259-2de3-4923-8051-9b30abd0f228"]
      archetype_config = {
        archetype_id   = "customer_online"
        parameters     = {}
        access_control = {}
      }
    }
    "${var.root_id}-Development" = {
      display_name               = "${upper(var.root_id)} Development"
      parent_management_group_id = "${var.root_id}-landing-zones"
      subscription_ids           = ["941fa35d-beba-448e-95ff-ad153b268cbe"]
      archetype_config = {
        archetype_id = "customer_online"
        parameters = {
          Deny-Resource-Locations = {
            listOfAllowedLocations = [var.primary_location, ]
          }
          Deny-RSG-Locations = {
            listOfAllowedLocations = [var.primary_location, ]
          }
        }
        access_control = {}
      }
    }
  }
}