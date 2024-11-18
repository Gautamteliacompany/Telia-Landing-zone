locals {
    configure_management_resources ={
        settings ={
            log_analytics = {
        enabled = true
        config = {
          retention_in_days          = var.log_retention_in_days
          enable_monitoring_for_vm   = false
          enable_monitoring_for_vmss = false
          enable_sentinel            = false
          enable_change_tracking     = false
        }
     }
     
     # Set the default location
    location = var.primary_location
    }
  }
}