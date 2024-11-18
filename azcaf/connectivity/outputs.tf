# Output a copy of configure_connectivity_resource for use by the core module
output "configuration" {
    description = "configuration settings for \"connectivity\" resource"
    value = local.configure_connectivity_resources 
}

output "subscription_id" {
  description = "Subscription ID for the \"connectivity\" resources."
  value       = var.subscription_id_connectivity
}

